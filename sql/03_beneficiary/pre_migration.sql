-- "directus"."beneficiary"

update "directus"."beneficiary" set "status" = 'Inactive' where "status" = 'inactive';
update "directus"."beneficiary" set "status" = 'Archived' where "status" = 'archived';
update "directus"."beneficiary" set "status" = 'Active' where "status" = 'active';
update "directus"."beneficiary" set "status" = 'Deceased' where "status" = 'deceased';

update "directus"."beneficiary" set "title" = 'Mister' where "title" = 'man';
update "directus"."beneficiary" set "title" = 'Miss' where "title" = 'lady';


update "directus"."beneficiary" set "gender" = 'Male' where "gender" = 'man';
update "directus"."beneficiary" set "gender" = 'Female' where "gender" = 'lady';
update "directus"."beneficiary" set "gender" = 'Other' where "gender" = 'other';

update "directus"."beneficiary" set "accommodation_mode" = 'Owner' where "accommodation_mode" = 'landlord';
update "directus"."beneficiary" set "accommodation_mode" = 'None' where "accommodation_mode" = 'no_accommodation';
update "directus"."beneficiary" set "accommodation_mode" = 'Fortune' where "accommodation_mode" = 'makshift_accommodation';
update "directus"."beneficiary" set "accommodation_mode" = 'Other' where "accommodation_mode" = 'other_accommodation';
update "directus"."beneficiary" set "accommodation_mode" = 'SocialRenting' where "accommodation_mode" = 'social_tenant';
update "directus"."beneficiary" set "accommodation_mode" = 'ThirdPerson' where "accommodation_mode" = 'third_party_hosting';
update "directus"."beneficiary" set "accommodation_mode" = 'NursingHome' where "accommodation_mode" = 'retirement_home';
update "directus"."beneficiary" set "accommodation_mode" = 'Parents' where "accommodation_mode" = 'parental_hosting';
update "directus"."beneficiary" set "accommodation_mode" = 'EmergencyHousing' where "accommodation_mode" = 'collective_accommodation';
update "directus"."beneficiary" set "accommodation_mode" = 'PrivateRenting' where "accommodation_mode" = 'private_tenant';

update "directus"."beneficiary" set "mobility" = 'OtherPermit' where "mobility" = 'other_licences';
update "directus"."beneficiary" set "mobility" = 'BikeOrEquivalent' where "mobility" = 'bike';
update "directus"."beneficiary" set "mobility" = 'PermitWithVehicle' where "mobility" = 'licence_vehicle';
update "directus"."beneficiary" set "mobility" = 'VehicleWithoutPermit' where "mobility" = 'no_licence_vehicle';
update "directus"."beneficiary" set "mobility" = 'PublicTransport' where "mobility" = 'public_transport';
update "directus"."beneficiary" set "mobility" = 'PermitPending' where "mobility" = 'licence_in_progress';
update "directus"."beneficiary" set "mobility" = 'InvalidPermit' where "mobility" = 'invalid_licence';
update "directus"."beneficiary" set "mobility" = 'None' where "mobility" = 'no_mobility';
update "directus"."beneficiary" set "mobility" = 'PermitWithoutVehicle' where "mobility" = 'licence_only';

update "directus"."beneficiary" set "family_situation" = 'Married' where "family_situation" = 'married';
update "directus"."beneficiary" set "family_situation" = 'Other' where "family_situation" = 'other';
update "directus"."beneficiary" set "family_situation" = 'Widow' where "family_situation" = 'widower';
update "directus"."beneficiary" set "family_situation" = 'Single' where "family_situation" = 'single';
update "directus"."beneficiary" set "family_situation" = 'Divorced' where "family_situation" = 'divorced';
update "directus"."beneficiary" set "family_situation" = 'Separated' where "family_situation" = 'separated';
update "directus"."beneficiary" set "family_situation" = 'CivilUnion' where "family_situation" = 'pacs';
update "directus"."beneficiary" set "family_situation" = 'SingleParentWithChildren' where "family_situation" = 'single_parent';
update "directus"."beneficiary" set "family_situation" = 'Cohabitation' where "family_situation" = 'concubinage';
update "directus"."beneficiary" set "family_situation" = 'CoupleWithChildren' where "family_situation" = 'couple_children';

update "directus"."beneficiary" set "gir" = 'Level1' where "gir" = 'gir_1';
update "directus"."beneficiary" set "gir" = 'Level2' where "gir" = 'gir_2';
update "directus"."beneficiary" set "gir" = 'Level3' where "gir" = 'gir_3';
update "directus"."beneficiary" set "gir" = 'Level4' where "gir" = 'gir_4';
update "directus"."beneficiary" set "gir" = 'Level5' where "gir" = 'gir_5';
update "directus"."beneficiary" set "gir" = 'Level6' where "gir" = 'gir_6';


update "directus"."beneficiary" set "socio_professional_category" = 'Employed' where "socio_professional_category" = 'employed';
update "directus"."beneficiary" set "socio_professional_category" = 'Retired' where "socio_professional_category" = 'retired';
update "directus"."beneficiary" set "socio_professional_category" = 'JobSeeker' where "socio_professional_category" = 'job_seeker';
update "directus"."beneficiary" set "socio_professional_category" = 'Disability' where "socio_professional_category" = 'disability';
update "directus"."beneficiary" set "socio_professional_category" = 'SickLeave' where "socio_professional_category" = 'sick_leave';
update "directus"."beneficiary" set "socio_professional_category" = 'Housewife' where "socio_professional_category" = 'housewife';
update "directus"."beneficiary" set "socio_professional_category" = 'NoActivity' where "socio_professional_category" = 'no_activity';
update "directus"."beneficiary" set "socio_professional_category" = 'Other' where "socio_professional_category" = 'other';

update "directus"."beneficiary" set "protection_measure" = 'Tutelle' where "protection_measure" = 'care';
update "directus"."beneficiary" set "protection_measure" = 'CuratelleSimple' where "protection_measure" = 'simple_protection';
update "directus"."beneficiary" set "protection_measure" = 'CuratelleRenforcee' where "protection_measure" = 'protection_intensified';
update "directus"."beneficiary" set "protection_measure" = 'SauvegardeDeJustice' where "protection_measure" = 'justice_safeguard';
update "directus"."beneficiary" set "protection_measure" = 'HabilitationFamiliale' where "protection_measure" = 'family_authorisation';
update "directus"."beneficiary" set "protection_measure" = 'MesureAccompagnement' where "protection_measure" = 'support_measure';
update "directus"."beneficiary" set "protection_measure" = 'MandatDeProtectionFuture' where "protection_measure" = 'future_protection_mandate';
update "directus"."beneficiary" set "protection_measure" = 'HabilitationDuConjoint' where "protection_measure" = 'spouse_authorisation';

update "directus"."beneficiary" set "orientation_type" = 'Spontanee' where "orientation_type" = 'spontaneous';
update "directus"."beneficiary" set "orientation_type" = 'Elu' where "orientation_type" = 'representative';
update "directus"."beneficiary" set "orientation_type" = 'Departement' where "orientation_type" = 'department';
update "directus"."beneficiary" set "orientation_type" = 'Association' where "orientation_type" = 'non_profit';
update "directus"."beneficiary" set "orientation_type" = 'Tiers' where "orientation_type" = 'third_party_report';
update "directus"."beneficiary" set "orientation_type" = 'SuiviCabinet' where "orientation_type" = 'staff_care';
update "directus"."beneficiary" set "orientation_type" = 'Autre' where "orientation_type" = 'other';

update "directus"."beneficiary" set main_income_type = json(replace(main_income_type::text, 'unemployment_benefit', 'IndemnitesPoleEmploi'));
update "directus"."beneficiary" set main_income_type = json(replace(main_income_type::text, 'rsa', 'Rsa'));
update "directus"."beneficiary" set main_income_type = json(replace(main_income_type::text, 'bonus', 'PrimeActivite'));
update "directus"."beneficiary" set main_income_type = json(replace(main_income_type::text, 'family_benefits', 'PrestationsFamiliales'));
update "directus"."beneficiary" set main_income_type = json(replace(main_income_type::text, 'income', 'Salaire'));
update "directus"."beneficiary" set main_income_type = json(replace(main_income_type::text, 'pension', 'Retraite'));
update "directus"."beneficiary" set main_income_type = json(replace(main_income_type::text, 'aspa', 'Aspa'));
update "directus"."beneficiary" set main_income_type = json(replace(main_income_type::text, 'disability_allowance', 'PensionInvalidite'));
update "directus"."beneficiary" set main_income_type = json(replace(main_income_type::text, 'daily_payments', 'IndemnitesJournalieres'));
update "directus"."beneficiary" set main_income_type = json(replace(main_income_type::text, 'aah', 'Aah'));
update "directus"."beneficiary" set main_income_type = json(replace(main_income_type::text, 'apl', 'Apl'));
update "directus"."beneficiary" set main_income_type = json(replace(main_income_type::text, 'other', 'Autre'));

update "directus"."beneficiary" set major_children_main_income_type = json(replace(major_children_main_income_type::text, 'unemployment_benefit', 'IndemnitesPoleEmploi'));
update "directus"."beneficiary" set major_children_main_income_type = json(replace(major_children_main_income_type::text, 'rsa', 'Rsa'));
update "directus"."beneficiary" set major_children_main_income_type = json(replace(major_children_main_income_type::text, 'bonus', 'PrimeActivite'));
update "directus"."beneficiary" set major_children_main_income_type = json(replace(major_children_main_income_type::text, 'family_benefits', 'PrestationsFamiliales'));
update "directus"."beneficiary" set major_children_main_income_type = json(replace(major_children_main_income_type::text, 'income', 'Salaire'));
update "directus"."beneficiary" set major_children_main_income_type = json(replace(major_children_main_income_type::text, 'pension', 'Retraite'));
update "directus"."beneficiary" set major_children_main_income_type = json(replace(major_children_main_income_type::text, 'aspa', 'Aspa'));
update "directus"."beneficiary" set major_children_main_income_type = json(replace(major_children_main_income_type::text, 'disability_allowance', 'PensionInvalidite'));
update "directus"."beneficiary" set major_children_main_income_type = json(replace(major_children_main_income_type::text, 'daily_payments', 'IndemnitesJournalieres'));
update "directus"."beneficiary" set major_children_main_income_type = json(replace(major_children_main_income_type::text, 'aah', 'Aah'));
update "directus"."beneficiary" set major_children_main_income_type = json(replace(major_children_main_income_type::text, 'apl', 'Apl'));
update "directus"."beneficiary" set major_children_main_income_type = json(replace(major_children_main_income_type::text, 'other', 'Autre'));

update "directus"."beneficiary" set partner_main_income_type = json(replace(partner_main_income_type::text, 'unemployment_benefit', 'IndemnitesPoleEmploi'));
update "directus"."beneficiary" set partner_main_income_type = json(replace(partner_main_income_type::text, 'rsa', 'Rsa'));
update "directus"."beneficiary" set partner_main_income_type = json(replace(partner_main_income_type::text, 'bonus', 'PrimeActivite'));
update "directus"."beneficiary" set partner_main_income_type = json(replace(partner_main_income_type::text, 'family_benefits', 'PrestationsFamiliales'));
update "directus"."beneficiary" set partner_main_income_type = json(replace(partner_main_income_type::text, 'income', 'Salaire'));
update "directus"."beneficiary" set partner_main_income_type = json(replace(partner_main_income_type::text, 'pension', 'Retraite'));
update "directus"."beneficiary" set partner_main_income_type = json(replace(partner_main_income_type::text, 'aspa', 'Aspa'));
update "directus"."beneficiary" set partner_main_income_type = json(replace(partner_main_income_type::text, 'disability_allowance', 'PensionInvalidite'));
update "directus"."beneficiary" set partner_main_income_type = json(replace(partner_main_income_type::text, 'daily_payments', 'IndemnitesJournalieres'));
update "directus"."beneficiary" set partner_main_income_type = json(replace(partner_main_income_type::text, 'aah', 'Aah'));
update "directus"."beneficiary" set partner_main_income_type = json(replace(partner_main_income_type::text, 'apl', 'Apl'));
update "directus"."beneficiary" set partner_main_income_type = json(replace(partner_main_income_type::text, 'other', 'Autre'));


ALTER TABLE "directus"."beneficiary" ADD "structure_id" uuid NULL;
update "directus"."beneficiary" b set "structure_id" = (
       SELECT r.organisation
        FROM "directus"."beneficiary_referents" br, "directus"."directus_users" r
        WHERE br.beneficiary = b.id
          AND br.referent = r.id
        LIMIT 1
    );


update "directus"."beneficiary" set aidant_connect_authorisation = false where aidant_connect_authorisation IS NULL;
update "directus"."beneficiary" set date_updated = date_created where date_updated IS NULL;