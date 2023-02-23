alter table "directus"."help_requests" add private_synthesis text null;
update "directus"."help_requests" hr set private_synthesis = (
    select private_synthesis
        FROM directus.private_help_request_synthesis s
        where hr.id = s.help_request
);

alter table "directus"."help_requests" add structure_id uuid null;
update "directus"."help_requests" hr set structure_id = (
    select u.organisation
        FROM directus.beneficiary b, directus.beneficiary_referents br, directus.directus_users u
        where hr.beneficiary = b.id AND b.id = br.beneficiary AND br.referent = u.id 
        LIMIT 1
);

alter table "directus"."help_requests" add prescribing_organization_id uuid null;
update "directus"."help_requests" hr set prescribing_organization_id = (
    select po.id
        FROM public.prescribing_organization po
        where po.legacy_id = organisme_prescripteur 
);

alter table "directus"."help_requests" add type_id uuid null;
update "directus"."help_requests" hr set type_id = (
    select ft.id
        FROM public.followup_type ft
        where ft.legacy_id = follow_up_type
);

update "directus"."help_requests" set "status" = 'WaitingAdditionalInformation' where "status" = 'waiting_additional_information';
update "directus"."help_requests" set "status" = 'InvestigationOngoing' where "status" = 'investigation_ongoing';
update "directus"."help_requests" set "status" = 'Accepted' where "status" = 'accepted';
update "directus"."help_requests" set "status" = 'Refused' where "status" = 'refused';
update "directus"."help_requests" set "status" = 'Adjourned' where "status" = 'ajourne';
update "directus"."help_requests" set "status" = 'ClosedByBeneficiary' where "status" = 'closed_by_beneficiary';
update "directus"."help_requests" set "status" = 'Dismissed' where "status" = 'dismissed';

-- Virement
update "directus"."help_requests" set "payment_method" = 'WireTransfer' where "payment_method" = 'bank_transfer';
-- Carte bancaire
update "directus"."help_requests" set "payment_method" = 'CreditCard' where "payment_method" = 'credit_card';
-- Espèces
update "directus"."help_requests" set "payment_method" = 'Cash' where "payment_method" = 'cash';
-- Chèque
update "directus"."help_requests" set "payment_method" = 'Check' where "payment_method" = 'cheque';
-- Bons alimentaire
update "directus"."help_requests" set "payment_method" = 'FoodStamps' where "payment_method" = 'food_coupon';

update "directus"."help_requests" set "reason" = 'Energy' where "reason" = 'energy';
update "directus"."help_requests" set "reason" = 'Food' where "reason" = 'food';
update "directus"."help_requests" set "reason" = 'Housing' where "reason" ='housing'; 
update "directus"."help_requests" set "reason" = 'Other' where "reason" ='other'; 


update "directus"."help_requests" set "date_updated" = "date_created" where "date_updated" is null; 
