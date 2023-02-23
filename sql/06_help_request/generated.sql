INSERT INTO "public"."help_request" (allocated_amount, asked_amount, beneficiary_id, created, updated, decision_date, dispatch_date, examining_organisation, type_id, handling_date, id, payment_date, refusal_reason, status, synthesis, created_by_id, examination_date, external_structure, financial_support, opening_date, payment_method, due_date, full_file, reason, ministre, numero_pegase, private_synthesis, structure_id, prescribing_organization_id) SELECT allocated_amount, asked_amount, beneficiary, date_created, date_updated, decision_date, dispatch_date, examining_organisation, follow_up_type, handling_date, id, payment_date, refusal_reason, CAST(status AS "HelpRequestStatus"), synthesis, user_created, examination_date, external_organisation, financial_support, opening_date, CAST(payment_method AS "PaymentMethod"), due_date, full_file, CAST(reason AS "HelpRequestReason"), ministre, numero_pegase, private_synthesis, structure_id, prescribing_organization_id FROM "directus"."help_requests";