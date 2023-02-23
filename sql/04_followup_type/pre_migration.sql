alter table "directus"."follow_up_types" add legally_required Boolean NULL;
update "directus"."follow_up_types" set legally_required = true where "type" = 'legal';
update "directus"."follow_up_types" set legally_required = true where "type" = 'optional';
update "directus"."follow_up_types" set date_created = now() where date_created is null;

DELETE FROM "directus"."organisation_follow_up_types" where id = 82;
DELETE FROM "directus"."organisation_follow_up_types" where id = 83;
DELETE FROM "directus"."organisation_follow_up_types" where id = 84;
DELETE FROM "directus"."organisation_follow_up_types" where id = 374;
DELETE FROM "directus"."organisation_follow_up_types" where id = 1276;
DELETE FROM "directus"."organisation_follow_up_types" where id = 962;

CREATE TABLE "directus"."follow_up_types_temp" AS (
    SELECT ft.date_created date_created
            , ft.id ft_id
            , ft.default "default"
            , oft.id oft_id
            , ft.name "name"
            , ft.legally_required legally_required
            , ft.user_created user_created
            , oft.organisation_id organisation_id
        FROM "directus"."follow_up_types" ft, "directus"."organisation_follow_up_types" oft
        WHERE ft.id = oft.follow_up_types_id
);

alter table "public"."followup_type" add source_id uuid NOT NULL;
alter table "public"."followup_type" add "default" boolean NULL;

