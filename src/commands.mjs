import subProcess from 'child_process';

export async function dumpDatabase(databaseUrl, schema, dumpFilePath) {
  const command = `pg_dump ${databaseUrl} -n ${schema} -Fc > ${dumpFilePath}`;
  return execCommand(command);
}

export async function execPsql(databaseUrl, sql) {
  const command = `psql ${databaseUrl} -a -c '${sql}'`;
  return execCommand(command);
}

export async function execSqlFile(databaseUrl, sqlFile) {
  const command = `psql ${databaseUrl} -a -f '${sqlFile}'`;
  return execCommand(command);
}

export async function restoreDatabase(dumpFilePath, databaseUrl, schema) {
  const command = `pg_restore -d "${databaseUrl}" -e -Fc --no-owner -n ${schema} ${dumpFilePath}`;
  return execCommand(command);

}

async function execCommand(command) {
  console.log(command);
  return subProcess.execSync(command, (err, stdout, stderr) => {
    if (err) {
      console.error(err)
      process.exit(1)
    } else {
      console.log(`The stdout Buffer from shell: ${stdout.toString()}`)
      console.log(`The stderr Buffer from shell: ${stderr.toString()}`)
    }
  })
}

