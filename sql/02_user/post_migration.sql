ALTER TABLE "public"."user" ALTER COLUMN "role" SET NOT NULL;
ALTER TABLE "directus"."directus_users" DROP COLUMN "role_enum";