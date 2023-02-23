-- "directus"."organisation"

update "directus"."organisation" set "type" = 'Commune' where "type" = 'city';
update "directus"."organisation" set "type" = 'Ministere' where "type" = 'ministry';
update "directus"."organisation" set "type" = 'Ccas' where "type" = 'ccas';
update "directus"."organisation" set "type" = 'Cias' where "type" = 'cias';
update "directus"."organisation" set "type" = 'Association' where "type" = 'association';