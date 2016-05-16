- connection: test_heroku

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards


- explore: accounts
  joins:
    - join: users
      type: left_outer 
      sql_on: ${accounts.user_id} = ${users.id}
      relationship: many_to_one


- explore: activities
  joins:
    - join: vendor_transactions
      type: left_outer 
      sql_on: ${activities.vendor_transaction_id} = ${vendor_transactions.id}
      relationship: many_to_one

    - join: fellows
      type: left_outer 
      sql_on: ${activities.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: reservations
      type: left_outer 
      sql_on: ${activities.reservation_id} = ${reservations.service_reservation_id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${activities.location_id} = ${locations.id}
      relationship: many_to_one

    - join: regions
      type: left_outer 
      sql_on: ${activities.region_id} = ${regions.id}
      relationship: many_to_one

    - join: requests
      type: left_outer 
      sql_on: ${activities.request_id} = ${requests.id}
      relationship: many_to_one

    - join: service_areas
      type: left_outer 
      sql_on: ${activities.service_area_id} = ${service_areas.id}
      relationship: many_to_one

    - join: reservation_issues
      type: left_outer 
      sql_on: ${activities.reservation_issue_id} = ${reservation_issues.id}
      relationship: many_to_one

    - join: property_promotions
      type: left_outer 
      sql_on: ${reservations.property_promotion_id} = ${property_promotions.id}
      relationship: many_to_one

    - join: listings
      type: left_outer 
      sql_on: ${reservations.listing_id} = ${listings.id}
      relationship: many_to_one

    - join: transactions
      type: left_outer 
      sql_on: ${reservations.transaction_id} = ${transactions.id}
      relationship: many_to_one

    - join: guests
      type: left_outer 
      sql_on: ${reservations.guest_id} = ${guests.id}
      relationship: many_to_one

    - join: promotions
      type: left_outer 
      sql_on: ${property_promotions.promotion_id} = ${promotions.id}
      relationship: many_to_one

    - join: accounts
      type: left_outer 
      sql_on: ${listings.account_id} = ${accounts.service_account_id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${accounts.user_id} = ${users.id}
      relationship: many_to_one


- explore: activity_fees
  joins:
    - join: fees
      type: left_outer 
      sql_on: ${activity_fees.fee_id} = ${fees.id}
      relationship: many_to_one

    - join: transactions
      type: left_outer 
      sql_on: ${activity_fees.transaction_id} = ${transactions.id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${transactions.user_id} = ${users.id}
      relationship: many_to_one


- explore: activity_followers

- explore: activity_histories
  joins:
    - join: fellows
      type: left_outer 
      sql_on: ${activity_histories.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one


- explore: amenities


- explore: availability_histories
  joins:
    - join: fellows
      type: left_outer 
      sql_on: ${availability_histories.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${availability_histories.user_id} = ${users.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one



- explore: balanced_bank_accounts
  joins:
    - join: users
      type: left_outer 
      sql_on: ${balanced_bank_accounts.user_id} = ${users.id}
      relationship: many_to_one


- explore: balanced_cards

- explore: base_prices

- explore: bill_dotcom_bank_accounts

- explore: bill_dotcom_classifications


- explore: cities
  joins:
    - join: regions
      type: left_outer 
      sql_on: ${cities.region_id} = ${regions.id}
      relationship: many_to_one


- explore: cleaners

- explore: comments

- explore: communications
  joins:
    - join: reservations
      type: left_outer 
      sql_on: ${communications.reservation_id} = ${reservations.service_reservation_id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${communications.user_id} = ${users.id}
      relationship: many_to_one

    - join: invoices
      type: left_outer 
      sql_on: ${communications.invoice_id} = ${invoices.id}
      relationship: many_to_one

    - join: listings
      type: left_outer 
      sql_on: ${communications.listing_id} = ${listings.id}
      relationship: many_to_one

    - join: accounts
      type: left_outer 
      sql_on: ${communications.account_id} = ${accounts.service_account_id}
      relationship: many_to_one

    - join: vendor_transactions
      type: left_outer 
      sql_on: ${communications.vendor_transaction_id} = ${vendor_transactions.id}
      relationship: many_to_one

    - join: fellows
      type: left_outer 
      sql_on: ${communications.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${communications.location_id} = ${locations.id}
      relationship: many_to_one

    - join: transactions
      type: left_outer 
      sql_on: ${communications.transaction_id} = ${transactions.id}
      relationship: many_to_one

    - join: guest_transactions
      type: left_outer 
      sql_on: ${communications.guest_transaction_id} = ${guest_transactions.id}
      relationship: many_to_one

    - join: requests
      type: left_outer 
      sql_on: ${communications.request_id} = ${requests.id}
      relationship: many_to_one

    - join: property_promotions
      type: left_outer 
      sql_on: ${reservations.property_promotion_id} = ${property_promotions.id}
      relationship: many_to_one

    - join: guests
      type: left_outer 
      sql_on: ${reservations.guest_id} = ${guests.id}
      relationship: many_to_one

    - join: promotions
      type: left_outer 
      sql_on: ${property_promotions.promotion_id} = ${promotions.id}
      relationship: many_to_one


- explore: contacts

- explore: crawl_user_account_jobs
  joins:
    - join: listings
      type: left_outer 
      sql_on: ${crawl_user_account_jobs.listing_id} = ${listings.id}
      relationship: many_to_one

    - join: accounts
      type: left_outer 
      sql_on: ${crawl_user_account_jobs.account_id} = ${accounts.service_account_id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${accounts.user_id} = ${users.id}
      relationship: many_to_one


- explore: deactivations
  joins:
    - join: users
      type: left_outer 
      sql_on: ${deactivations.user_id} = ${users.id}
      relationship: many_to_one


- explore: delighted_surveys

- explore: documents

- explore: events

- explore: faqs

- explore: fees

- explore: fellow_availability_shifts
  joins:
    - join: fellows
      type: left_outer 
      sql_on: ${fellow_availability_shifts.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one


- explore: fellow_available_teams
  joins:
    - join: fellows
      type: left_outer 
      sql_on: ${fellow_available_teams.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one


- explore: fellow_properties
  joins:
    - join: fellows
      type: left_outer 
      sql_on: ${fellow_properties.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one


- explore: fellows
  joins:
    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one


- explore: fellows_service_areas
  joins:
    - join: fellows
      type: left_outer 
      sql_on: ${fellows_service_areas.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: service_areas
      type: left_outer 
      sql_on: ${fellows_service_areas.service_area_id} = ${service_areas.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one

    - join: regions
      type: left_outer 
      sql_on: ${service_areas.region_id} = ${regions.id}
      relationship: many_to_one


- explore: flipper_features

- explore: flipper_gates

- explore: geography_columns

- explore: geometry_columns

- explore: guarantee_documents
  joins:
    - join: guarantees
      type: left_outer 
      sql_on: ${guarantee_documents.guarantee_id} = ${guarantees.id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${guarantees.user_id} = ${users.id}
      relationship: many_to_one


- explore: guarantees
  joins:
    - join: users
      type: left_outer 
      sql_on: ${guarantees.user_id} = ${users.id}
      relationship: many_to_one


- explore: guest_services
  joins:
    - join: guests
      type: left_outer 
      sql_on: ${guest_services.guest_id} = ${guests.id}
      relationship: many_to_one


- explore: guest_transactions
  joins:
    - join: reservations
      type: left_outer 
      sql_on: ${guest_transactions.reservation_id} = ${reservations.service_reservation_id}
      relationship: many_to_one

    - join: property_promotions
      type: left_outer 
      sql_on: ${reservations.property_promotion_id} = ${property_promotions.id}
      relationship: many_to_one

    - join: listings
      type: left_outer 
      sql_on: ${reservations.listing_id} = ${listings.id}
      relationship: many_to_one

    - join: transactions
      type: left_outer 
      sql_on: ${reservations.transaction_id} = ${transactions.id}
      relationship: many_to_one

    - join: guests
      type: left_outer 
      sql_on: ${reservations.guest_id} = ${guests.id}
      relationship: many_to_one

    - join: promotions
      type: left_outer 
      sql_on: ${property_promotions.promotion_id} = ${promotions.id}
      relationship: many_to_one

    - join: fellows
      type: left_outer 
      sql_on: ${promotions.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one

    - join: accounts
      type: left_outer 
      sql_on: ${listings.account_id} = ${accounts.service_account_id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${accounts.user_id} = ${users.id}
      relationship: many_to_one


- explore: guests

- explore: inventories

- explore: invoices
  joins:
    - join: users
      type: left_outer 
      sql_on: ${invoices.user_id} = ${users.id}
      relationship: many_to_one


- explore: issue_reports
  joins:
    - join: fellows
      type: left_outer 
      sql_on: ${issue_reports.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one


- explore: listing_applications

- explore: listing_photos

- explore: listings
  joins:
    - join: accounts
      type: left_outer 
      sql_on: ${listings.account_id} = ${accounts.service_account_id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${accounts.user_id} = ${users.id}
      relationship: many_to_one


- explore: location_closed_dates
  joins:
    - join: locations
      type: left_outer 
      sql_on: ${location_closed_dates.location_id} = ${locations.id}
      relationship: many_to_one


- explore: location_contacts
  joins:
    - join: locations
      type: left_outer 
      sql_on: ${location_contacts.location_id} = ${locations.id}
      relationship: many_to_one


- explore: locations

- explore: lockbox_codes
  joins:
    - join: fellows
      type: left_outer 
      sql_on: ${lockbox_codes.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one


- explore: lockbox_images

- explore: message_activities
  joins:
    - join: fellows
      type: left_outer 
      sql_on: ${message_activities.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: messages
      type: left_outer 
      sql_on: ${message_activities.message_id} = ${messages.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one

    - join: zendesk_tickets
      type: left_outer 
      sql_on: ${messages.zendesk_ticket_id} = ${zendesk_tickets.id}
      relationship: many_to_one

    - join: service_conversations
      type: left_outer 
      sql_on: ${messages.service_conversation_id} = ${service_conversations.id}
      relationship: many_to_one

    - join: accounts
      type: left_outer 
      sql_on: ${messages.account_id} = ${accounts.service_account_id}
      relationship: many_to_one

    - join: listings
      type: left_outer 
      sql_on: ${messages.listing_id} = ${listings.id}
      relationship: many_to_one

    - join: reservations
      type: left_outer 
      sql_on: ${messages.reservation_id} = ${reservations.service_reservation_id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${accounts.user_id} = ${users.id}
      relationship: many_to_one

    - join: property_promotions
      type: left_outer 
      sql_on: ${reservations.property_promotion_id} = ${property_promotions.id}
      relationship: many_to_one

    - join: transactions
      type: left_outer 
      sql_on: ${reservations.transaction_id} = ${transactions.id}
      relationship: many_to_one

    - join: guests
      type: left_outer 
      sql_on: ${reservations.guest_id} = ${guests.id}
      relationship: many_to_one

    - join: promotions
      type: left_outer 
      sql_on: ${property_promotions.promotion_id} = ${promotions.id}
      relationship: many_to_one


- explore: message_data
  joins:
    - join: messages
      type: left_outer 
      sql_on: ${message_data.message_id} = ${messages.id}
      relationship: many_to_one

    - join: zendesk_tickets
      type: left_outer 
      sql_on: ${messages.zendesk_ticket_id} = ${zendesk_tickets.id}
      relationship: many_to_one

    - join: service_conversations
      type: left_outer 
      sql_on: ${messages.service_conversation_id} = ${service_conversations.id}
      relationship: many_to_one

    - join: fellows
      type: left_outer 
      sql_on: ${messages.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: accounts
      type: left_outer 
      sql_on: ${messages.account_id} = ${accounts.service_account_id}
      relationship: many_to_one

    - join: listings
      type: left_outer 
      sql_on: ${messages.listing_id} = ${listings.id}
      relationship: many_to_one

    - join: reservations
      type: left_outer 
      sql_on: ${messages.reservation_id} = ${reservations.service_reservation_id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${accounts.user_id} = ${users.id}
      relationship: many_to_one

    - join: property_promotions
      type: left_outer 
      sql_on: ${reservations.property_promotion_id} = ${property_promotions.id}
      relationship: many_to_one

    - join: transactions
      type: left_outer 
      sql_on: ${reservations.transaction_id} = ${transactions.id}
      relationship: many_to_one

    - join: guests
      type: left_outer 
      sql_on: ${reservations.guest_id} = ${guests.id}
      relationship: many_to_one

    - join: promotions
      type: left_outer 
      sql_on: ${property_promotions.promotion_id} = ${promotions.id}
      relationship: many_to_one


- explore: message_specific_data
  joins:
    - join: messages
      type: left_outer 
      sql_on: ${message_specific_data.message_id} = ${messages.id}
      relationship: many_to_one

    - join: zendesk_tickets
      type: left_outer 
      sql_on: ${messages.zendesk_ticket_id} = ${zendesk_tickets.id}
      relationship: many_to_one

    - join: service_conversations
      type: left_outer 
      sql_on: ${messages.service_conversation_id} = ${service_conversations.id}
      relationship: many_to_one

    - join: fellows
      type: left_outer 
      sql_on: ${messages.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: accounts
      type: left_outer 
      sql_on: ${messages.account_id} = ${accounts.service_account_id}
      relationship: many_to_one

    - join: listings
      type: left_outer 
      sql_on: ${messages.listing_id} = ${listings.id}
      relationship: many_to_one

    - join: reservations
      type: left_outer 
      sql_on: ${messages.reservation_id} = ${reservations.service_reservation_id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${accounts.user_id} = ${users.id}
      relationship: many_to_one

    - join: property_promotions
      type: left_outer 
      sql_on: ${reservations.property_promotion_id} = ${property_promotions.id}
      relationship: many_to_one

    - join: transactions
      type: left_outer 
      sql_on: ${reservations.transaction_id} = ${transactions.id}
      relationship: many_to_one

    - join: guests
      type: left_outer 
      sql_on: ${reservations.guest_id} = ${guests.id}
      relationship: many_to_one

    - join: promotions
      type: left_outer 
      sql_on: ${property_promotions.promotion_id} = ${promotions.id}
      relationship: many_to_one


- explore: messages
  joins:
    - join: zendesk_tickets
      type: left_outer 
      sql_on: ${messages.zendesk_ticket_id} = ${zendesk_tickets.id}
      relationship: many_to_one

    - join: service_conversations
      type: left_outer 
      sql_on: ${messages.service_conversation_id} = ${service_conversations.id}
      relationship: many_to_one

    - join: fellows
      type: left_outer 
      sql_on: ${messages.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: accounts
      type: left_outer 
      sql_on: ${messages.account_id} = ${accounts.service_account_id}
      relationship: many_to_one

    - join: listings
      type: left_outer 
      sql_on: ${messages.listing_id} = ${listings.id}
      relationship: many_to_one

    - join: reservations
      type: left_outer 
      sql_on: ${messages.reservation_id} = ${reservations.service_reservation_id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${accounts.user_id} = ${users.id}
      relationship: many_to_one

    - join: property_promotions
      type: left_outer 
      sql_on: ${reservations.property_promotion_id} = ${property_promotions.id}
      relationship: many_to_one

    - join: transactions
      type: left_outer 
      sql_on: ${reservations.transaction_id} = ${transactions.id}
      relationship: many_to_one

    - join: guests
      type: left_outer 
      sql_on: ${reservations.guest_id} = ${guests.id}
      relationship: many_to_one

    - join: promotions
      type: left_outer 
      sql_on: ${property_promotions.promotion_id} = ${promotions.id}
      relationship: many_to_one


- explore: metrics

- explore: notes
  joins:
    - join: fellows
      type: left_outer 
      sql_on: ${notes.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one


- explore: owner_notes
  joins:
    - join: users
      type: left_outer 
      sql_on: ${owner_notes.user_id} = ${users.id}
      relationship: many_to_one


- explore: owner_refunds
  joins:
    - join: transactions
      type: left_outer 
      sql_on: ${owner_refunds.transaction_id} = ${transactions.id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${transactions.user_id} = ${users.id}
      relationship: many_to_one


- explore: performance_data

- explore: pg_stat_statements
  joins:
    - join: users
      type: left_outer 
      sql_on: ${pg_stat_statements.userid} = ${users.id}
      relationship: many_to_one


- explore: platform_resources

- explore: postal_addresses
  joins:
    - join: regions
      type: left_outer 
      sql_on: ${postal_addresses.region_id} = ${regions.id}
      relationship: many_to_one

    - join: service_areas
      type: left_outer 
      sql_on: ${postal_addresses.service_area_id} = ${service_areas.id}
      relationship: many_to_one


- explore: prices

- explore: promotions
  joins:
    - join: fellows
      type: left_outer 
      sql_on: ${promotions.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one


- explore: properties
  joins:
    - join: users
      type: left_outer 
      sql_on: ${properties.user_id} = ${users.id}
      relationship: many_to_one


- explore: property_access_points

- explore: property_access_points_keys
  joins:
    - join: property_keys
      type: left_outer 
      sql_on: ${property_access_points_keys.property_key_id} = ${property_keys.id}
      relationship: many_to_one

    - join: property_access_points
      type: left_outer 
      sql_on: ${property_access_points_keys.property_access_point_id} = ${property_access_points.id}
      relationship: many_to_one


- explore: property_amenities

- explore: property_guarantees
  joins:
    - join: guarantees
      type: left_outer 
      sql_on: ${property_guarantees.guarantee_id} = ${guarantees.id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${guarantees.user_id} = ${users.id}
      relationship: many_to_one


- explore: property_histories

- explore: property_issues

- explore: property_keys

- explore: property_price_params

- explore: property_promotions
  joins:
    - join: promotions
      type: left_outer 
      sql_on: ${property_promotions.promotion_id} = ${promotions.id}
      relationship: many_to_one

    - join: fellows
      type: left_outer 
      sql_on: ${promotions.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one


- explore: prospects

- explore: questions
  joins:
    - join: faqs
      type: left_outer 
      sql_on: ${questions.faq_id} = ${faqs.id}
      relationship: many_to_one


- explore: raster_columns

- explore: raster_overviews

- explore: regions

- explore: request_approvals
  joins:
    - join: requests
      type: left_outer 
      sql_on: ${request_approvals.request_id} = ${requests.id}
      relationship: many_to_one

    - join: reservations
      type: left_outer 
      sql_on: ${requests.reservation_id} = ${reservations.service_reservation_id}
      relationship: many_to_one

    - join: property_promotions
      type: left_outer 
      sql_on: ${reservations.property_promotion_id} = ${property_promotions.id}
      relationship: many_to_one

    - join: listings
      type: left_outer 
      sql_on: ${reservations.listing_id} = ${listings.id}
      relationship: many_to_one

    - join: transactions
      type: left_outer 
      sql_on: ${reservations.transaction_id} = ${transactions.id}
      relationship: many_to_one

    - join: guests
      type: left_outer 
      sql_on: ${reservations.guest_id} = ${guests.id}
      relationship: many_to_one

    - join: promotions
      type: left_outer 
      sql_on: ${property_promotions.promotion_id} = ${promotions.id}
      relationship: many_to_one

    - join: fellows
      type: left_outer 
      sql_on: ${promotions.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one

    - join: accounts
      type: left_outer 
      sql_on: ${listings.account_id} = ${accounts.service_account_id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${accounts.user_id} = ${users.id}
      relationship: many_to_one


- explore: request_costs
  joins:
    - join: fees
      type: left_outer 
      sql_on: ${request_costs.fee_id} = ${fees.id}
      relationship: many_to_one

    - join: guest_transactions
      type: left_outer 
      sql_on: ${request_costs.guest_transaction_id} = ${guest_transactions.id}
      relationship: many_to_one

    - join: requests
      type: left_outer 
      sql_on: ${request_costs.request_id} = ${requests.id}
      relationship: many_to_one

    - join: reservations
      type: left_outer 
      sql_on: ${guest_transactions.reservation_id} = ${reservations.service_reservation_id}
      relationship: many_to_one

    - join: property_promotions
      type: left_outer 
      sql_on: ${reservations.property_promotion_id} = ${property_promotions.id}
      relationship: many_to_one

    - join: listings
      type: left_outer 
      sql_on: ${reservations.listing_id} = ${listings.id}
      relationship: many_to_one

    - join: transactions
      type: left_outer 
      sql_on: ${reservations.transaction_id} = ${transactions.id}
      relationship: many_to_one

    - join: guests
      type: left_outer 
      sql_on: ${reservations.guest_id} = ${guests.id}
      relationship: many_to_one

    - join: promotions
      type: left_outer 
      sql_on: ${property_promotions.promotion_id} = ${promotions.id}
      relationship: many_to_one

    - join: fellows
      type: left_outer 
      sql_on: ${promotions.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one

    - join: accounts
      type: left_outer 
      sql_on: ${listings.account_id} = ${accounts.service_account_id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${accounts.user_id} = ${users.id}
      relationship: many_to_one


- explore: requests
  joins:
    - join: reservations
      type: left_outer 
      sql_on: ${requests.reservation_id} = ${reservations.service_reservation_id}
      relationship: many_to_one

    - join: property_promotions
      type: left_outer 
      sql_on: ${reservations.property_promotion_id} = ${property_promotions.id}
      relationship: many_to_one

    - join: listings
      type: left_outer 
      sql_on: ${reservations.listing_id} = ${listings.id}
      relationship: many_to_one

    - join: transactions
      type: left_outer 
      sql_on: ${reservations.transaction_id} = ${transactions.id}
      relationship: many_to_one

    - join: guests
      type: left_outer 
      sql_on: ${reservations.guest_id} = ${guests.id}
      relationship: many_to_one

    - join: promotions
      type: left_outer 
      sql_on: ${property_promotions.promotion_id} = ${promotions.id}
      relationship: many_to_one

    - join: fellows
      type: left_outer 
      sql_on: ${promotions.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one

    - join: accounts
      type: left_outer 
      sql_on: ${listings.account_id} = ${accounts.service_account_id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${accounts.user_id} = ${users.id}
      relationship: many_to_one


- explore: reservation_issues
  joins:
    - join: reservations
      type: left_outer 
      sql_on: ${reservation_issues.reservation_id} = ${reservations.service_reservation_id}
      relationship: many_to_one

    - join: property_promotions
      type: left_outer 
      sql_on: ${reservations.property_promotion_id} = ${property_promotions.id}
      relationship: many_to_one

    - join: listings
      type: left_outer 
      sql_on: ${reservations.listing_id} = ${listings.id}
      relationship: many_to_one

    - join: transactions
      type: left_outer 
      sql_on: ${reservations.transaction_id} = ${transactions.id}
      relationship: many_to_one

    - join: guests
      type: left_outer 
      sql_on: ${reservations.guest_id} = ${guests.id}
      relationship: many_to_one

    - join: promotions
      type: left_outer 
      sql_on: ${property_promotions.promotion_id} = ${promotions.id}
      relationship: many_to_one

    - join: fellows
      type: left_outer 
      sql_on: ${promotions.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one

    - join: accounts
      type: left_outer 
      sql_on: ${listings.account_id} = ${accounts.service_account_id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${accounts.user_id} = ${users.id}
      relationship: many_to_one


- explore: reservations
  joins:
    - join: property_promotions
      type: left_outer 
      sql_on: ${reservations.property_promotion_id} = ${property_promotions.id}
      relationship: many_to_one

    - join: listings
      type: left_outer 
      sql_on: ${reservations.listing_id} = ${listings.id}
      relationship: many_to_one

    - join: transactions
      type: left_outer 
      sql_on: ${reservations.transaction_id} = ${transactions.id}
      relationship: many_to_one

    - join: guests
      type: left_outer 
      sql_on: ${reservations.guest_id} = ${guests.id}
      relationship: many_to_one

    - join: promotions
      type: left_outer 
      sql_on: ${property_promotions.promotion_id} = ${promotions.id}
      relationship: many_to_one

    - join: fellows
      type: left_outer 
      sql_on: ${promotions.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one

    - join: accounts
      type: left_outer 
      sql_on: ${listings.account_id} = ${accounts.service_account_id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${accounts.user_id} = ${users.id}
      relationship: many_to_one


- explore: reviews
  joins:
    - join: reservations
      type: left_outer 
      sql_on: ${reviews.reservation_id} = ${reservations.service_reservation_id}
      relationship: many_to_one

    - join: property_promotions
      type: left_outer 
      sql_on: ${reservations.property_promotion_id} = ${property_promotions.id}
      relationship: many_to_one

    - join: listings
      type: left_outer 
      sql_on: ${reservations.listing_id} = ${listings.id}
      relationship: many_to_one

    - join: transactions
      type: left_outer 
      sql_on: ${reservations.transaction_id} = ${transactions.id}
      relationship: many_to_one

    - join: guests
      type: left_outer 
      sql_on: ${reservations.guest_id} = ${guests.id}
      relationship: many_to_one

    - join: promotions
      type: left_outer 
      sql_on: ${property_promotions.promotion_id} = ${promotions.id}
      relationship: many_to_one

    - join: fellows
      type: left_outer 
      sql_on: ${promotions.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one

    - join: accounts
      type: left_outer 
      sql_on: ${listings.account_id} = ${accounts.service_account_id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${accounts.user_id} = ${users.id}
      relationship: many_to_one


- explore: schema_migrations

- explore: search_fields

- explore: seasonalities

- explore: service_area_activity_overrides
  joins:
    - join: service_areas
      type: left_outer 
      sql_on: ${service_area_activity_overrides.service_area_id} = ${service_areas.id}
      relationship: many_to_one

    - join: regions
      type: left_outer 
      sql_on: ${service_areas.region_id} = ${regions.id}
      relationship: many_to_one


- explore: service_area_activity_priority_settings
  joins:
    - join: service_areas
      type: left_outer 
      sql_on: ${service_area_activity_priority_settings.service_area_id} = ${service_areas.id}
      relationship: many_to_one

    - join: regions
      type: left_outer 
      sql_on: ${service_areas.region_id} = ${regions.id}
      relationship: many_to_one


- explore: service_areas
  joins:
    - join: regions
      type: left_outer 
      sql_on: ${service_areas.region_id} = ${regions.id}
      relationship: many_to_one


- explore: service_areas_vendors
  joins:
    - join: service_areas
      type: left_outer 
      sql_on: ${service_areas_vendors.service_area_id} = ${service_areas.id}
      relationship: many_to_one

    - join: vendors
      type: left_outer 
      sql_on: ${service_areas_vendors.vendor_id} = ${vendors.id}
      relationship: many_to_one

    - join: regions
      type: left_outer 
      sql_on: ${service_areas.region_id} = ${regions.id}
      relationship: many_to_one

    - join: fellows
      type: left_outer 
      sql_on: ${vendors.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one


- explore: service_conversation_messages
  joins:
    - join: service_conversations
      type: left_outer 
      sql_on: ${service_conversation_messages.service_conversation_id} = ${service_conversations.id}
      relationship: many_to_one


- explore: service_conversations

- explore: service_listings
  joins:
    - join: users
      type: left_outer 
      sql_on: ${service_listings.user_id} = ${users.id}
      relationship: many_to_one


- explore: sift_orders
  joins:
    - join: reservations
      type: left_outer 
      sql_on: ${sift_orders.reservation_id} = ${reservations.service_reservation_id}
      relationship: many_to_one

    - join: guests
      type: left_outer 
      sql_on: ${sift_orders.guest_id} = ${guests.id}
      relationship: many_to_one

    - join: property_promotions
      type: left_outer 
      sql_on: ${reservations.property_promotion_id} = ${property_promotions.id}
      relationship: many_to_one

    - join: listings
      type: left_outer 
      sql_on: ${reservations.listing_id} = ${listings.id}
      relationship: many_to_one

    - join: transactions
      type: left_outer 
      sql_on: ${reservations.transaction_id} = ${transactions.id}
      relationship: many_to_one

    - join: promotions
      type: left_outer 
      sql_on: ${property_promotions.promotion_id} = ${promotions.id}
      relationship: many_to_one

    - join: fellows
      type: left_outer 
      sql_on: ${promotions.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one

    - join: accounts
      type: left_outer 
      sql_on: ${listings.account_id} = ${accounts.service_account_id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${accounts.user_id} = ${users.id}
      relationship: many_to_one


- explore: skills
  joins:
    - join: fellows
      type: left_outer 
      sql_on: ${skills.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one


- explore: sleeping_surfaces

- explore: spatial_ref_sys

- explore: stripe_cards

- explore: temp_homeaway_vrbo

- explore: transaction_credits_or_debits
  joins:
    - join: activity_fees
      type: left_outer 
      sql_on: ${transaction_credits_or_debits.activity_fee_id} = ${activity_fees.id}
      relationship: many_to_one

    - join: reservations
      type: left_outer 
      sql_on: ${transaction_credits_or_debits.reservation_id} = ${reservations.service_reservation_id}
      relationship: many_to_one

    - join: owner_refunds
      type: left_outer 
      sql_on: ${transaction_credits_or_debits.owner_refund_id} = ${owner_refunds.id}
      relationship: many_to_one

    - join: transactions
      type: left_outer 
      sql_on: ${transaction_credits_or_debits.transaction_id} = ${transactions.id}
      relationship: many_to_one

    - join: fees
      type: left_outer 
      sql_on: ${activity_fees.fee_id} = ${fees.id}
      relationship: many_to_one

    - join: property_promotions
      type: left_outer 
      sql_on: ${reservations.property_promotion_id} = ${property_promotions.id}
      relationship: many_to_one

    - join: listings
      type: left_outer 
      sql_on: ${reservations.listing_id} = ${listings.id}
      relationship: many_to_one

    - join: guests
      type: left_outer 
      sql_on: ${reservations.guest_id} = ${guests.id}
      relationship: many_to_one

    - join: promotions
      type: left_outer 
      sql_on: ${property_promotions.promotion_id} = ${promotions.id}
      relationship: many_to_one

    - join: fellows
      type: left_outer 
      sql_on: ${promotions.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one

    - join: accounts
      type: left_outer 
      sql_on: ${listings.account_id} = ${accounts.service_account_id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${accounts.user_id} = ${users.id}
      relationship: many_to_one


- explore: transaction_line_items
  joins:
    - join: transactions
      type: left_outer 
      sql_on: ${transaction_line_items.transaction_id} = ${transactions.id}
      relationship: many_to_one

    - join: reservations
      type: left_outer 
      sql_on: ${transaction_line_items.reservation_id} = ${reservations.service_reservation_id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${transactions.user_id} = ${users.id}
      relationship: many_to_one

    - join: property_promotions
      type: left_outer 
      sql_on: ${reservations.property_promotion_id} = ${property_promotions.id}
      relationship: many_to_one

    - join: listings
      type: left_outer 
      sql_on: ${reservations.listing_id} = ${listings.id}
      relationship: many_to_one

    - join: guests
      type: left_outer 
      sql_on: ${reservations.guest_id} = ${guests.id}
      relationship: many_to_one

    - join: promotions
      type: left_outer 
      sql_on: ${property_promotions.promotion_id} = ${promotions.id}
      relationship: many_to_one

    - join: fellows
      type: left_outer 
      sql_on: ${promotions.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one

    - join: accounts
      type: left_outer 
      sql_on: ${listings.account_id} = ${accounts.service_account_id}
      relationship: many_to_one


- explore: transactions
  joins:
    - join: users
      type: left_outer 
      sql_on: ${transactions.user_id} = ${users.id}
      relationship: many_to_one


- explore: unavailabilities

- explore: user_account_listing_details
  joins:
    - join: accounts
      type: left_outer 
      sql_on: ${user_account_listing_details.account_id} = ${accounts.service_account_id}
      relationship: many_to_one

    - join: listings
      type: left_outer 
      sql_on: ${user_account_listing_details.listing_id} = ${listings.id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${accounts.user_id} = ${users.id}
      relationship: many_to_one


- explore: user_docusign_envelopes
  joins:
    - join: users
      type: left_outer 
      sql_on: ${user_docusign_envelopes.user_id} = ${users.id}
      relationship: many_to_one


- explore: users

- explore: vendor_events
  joins:
    - join: vendors
      type: left_outer 
      sql_on: ${vendor_events.vendor_id} = ${vendors.id}
      relationship: many_to_one

    - join: fellows
      type: left_outer 
      sql_on: ${vendors.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one


- explore: vendor_transactions
  joins:
    - join: fellows
      type: left_outer 
      sql_on: ${vendor_transactions.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one


- explore: vendors
  joins:
    - join: fellows
      type: left_outer 
      sql_on: ${vendors.fellow_id} = ${fellows.id}
      relationship: many_to_one

    - join: locations
      type: left_outer 
      sql_on: ${fellows.location_id} = ${locations.id}
      relationship: many_to_one


- explore: verification_codes

- explore: versions

- explore: vs_database_diagrams

- explore: walkthroughs

- explore: zendesk_ticket_available_actions
  joins:
    - join: zendesk_tickets
      type: left_outer 
      sql_on: ${zendesk_ticket_available_actions.zendesk_ticket_id} = ${zendesk_tickets.id}
      relationship: many_to_one


- explore: zendesk_tickets

- explore: zipcode_locations

