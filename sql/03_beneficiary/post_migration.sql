update "public"."beneficiary" b set "structure_id" = (
       SELECT r.organisation
        FROM "directus"."beneficiary_referents" br, "directus"."directus_users" r
        WHERE br.beneficiary = b.id
          AND br.referent = r.id
        LIMIT 1
    );

update "public"."beneficiary" set aidant_connect_authorized = false where aidant_connect_authorized IS NULL;
update "public"."beneficiary" set updated = created where updated IS NULL;

ALTER TABLE "public"."beneficiary" ALTER COLUMN "structure_id" SET NOT NULL;
ALTER TABLE "public"."beneficiary" ALTER COLUMN "updated" SET NOT NULL;
ALTER TABLE "public"."beneficiary" ALTER COLUMN "aidant_connect_authorized" SET NOT NULL;

