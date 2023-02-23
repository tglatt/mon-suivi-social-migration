
import dotenv from 'dotenv';
import { dumpDatabase, restoreDatabase, execPsql, execSqlFile } from './src/commands.mjs';
import { generateSqlMigrationFiles } from './src/generateSqlScripts.mjs';

dotenv.config();

const DATABASE_URL_DIST = process.env.DATABASE_URL_DIST;
const DATABASE_URL_LOCAL = process.env.DATABASE_URL_LOCAL;

// dump dist bdd and restore in local in "directus" schema
await prepareDatabase();

// Génération des scripts sql
generateSqlMigrationFiles();

// Execution des scripts sql
await migrateAllTables();


async function prepareDatabase() {
    await dumpDatabase(DATABASE_URL_DIST, "public", "./dumps/dist.dump");

    await execPsql(DATABASE_URL_LOCAL, "CREATE DATABASE directus");
    await restoreDatabase("./dumps/dist.dump", DATABASE_URL_LOCAL + "/directus", "public");
    await execPsql(DATABASE_URL_LOCAL + "/directus", "ALTER schema public rename to directus");
    await dumpDatabase(DATABASE_URL_LOCAL + "/directus", "directus", "./dumps/directus.dump");
    await execPsql(DATABASE_URL_LOCAL + "/mss", "CREATE SCHEMA directus");
    await restoreDatabase("./dumps/directus.dump", DATABASE_URL_LOCAL + "/mss", "directus");

    await execPsql(DATABASE_URL_LOCAL + "/mss", "CREATE EXTENSION pgcrypto");
}

async function migrateAllTables() {
    await migrate("01_structure");
    await migrate("02_user");
    await migrate("03_beneficiary");
    await migrate("04_followup_type");
}

async function migrate(path) {
    await execSqlFile(DATABASE_URL_LOCAL + "/mss", `./sql/${path}/pre_migration.sql`);
    await execSqlFile(DATABASE_URL_LOCAL + "/mss", `./sql/${path}/generated.sql`);
    await execSqlFile(DATABASE_URL_LOCAL + "/mss", `./sql/${path}/post_migration.sql`);
}
