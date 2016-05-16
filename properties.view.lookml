- view: properties
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: accepted_pricing_algorithm
    type: yesno
    sql: ${TABLE}.accepted_pricing_algorithm

  - dimension: accommodates
    type: number
    sql: ${TABLE}.accommodates

  - dimension: additional_guest_fee_after
    type: number
    sql: ${TABLE}.additional_guest_fee_after

  - dimension: additional_guest_fee_amount
    type: number
    sql: ${TABLE}.additional_guest_fee_amount

  - dimension: airbnb_cancellation_policy
    type: string
    sql: ${TABLE}.airbnb_cancellation_policy

  - dimension: airenvy_fee_percentage
    type: number
    sql: ${TABLE}.airenvy_fee_percentage

  - dimension: airenvy_lockbox_code
    type: string
    sql: ${TABLE}.airenvy_lockbox_code

  - dimension: airenvy_lockbox_location
    type: string
    sql: ${TABLE}.airenvy_lockbox_location

  - dimension: allow_orphan_nights
    type: yesno
    sql: ${TABLE}.allow_orphan_nights

  - dimension: bathroom_count
    type: number
    sql: ${TABLE}.bathroom_count

  - dimension: bedroom_count
    type: number
    sql: ${TABLE}.bedroom_count

  - dimension: calendar_availability
    type: number
    sql: ${TABLE}.calendar_availability

  - dimension: calendar_url
    type: string
    sql: ${TABLE}.calendar_url

  - dimension: can_copy_keys
    type: yesno
    sql: ${TABLE}.can_copy_keys

  - dimension: can_leave_reviews
    type: yesno
    sql: ${TABLE}.can_leave_reviews

  - dimension: charge_guest_for_linen_service
    type: yesno
    sql: ${TABLE}.charge_guest_for_linen_service

  - dimension: charge_guest_for_supply_service
    type: yesno
    sql: ${TABLE}.charge_guest_for_supply_service

  - dimension: charge_owner_for_linen_service
    type: yesno
    sql: ${TABLE}.charge_owner_for_linen_service

  - dimension: charge_owner_for_supply_service
    type: yesno
    sql: ${TABLE}.charge_owner_for_supply_service

  - dimension: children_allowed
    type: yesno
    sql: ${TABLE}.children_allowed

  - dimension: children_at_least
    type: number
    sql: ${TABLE}.children_at_least

  - dimension: circuit_breaker_info
    type: string
    sql: ${TABLE}.circuit_breaker_info

  - dimension: cleaner_extra_attention
    type: string
    sql: ${TABLE}.cleaner_extra_attention

  - dimension: cleaners_handle_linens
    type: yesno
    sql: ${TABLE}.cleaners_handle_linens

  - dimension: cleaning_comp_multiplier
    type: number
    sql: ${TABLE}.cleaning_comp_multiplier

  - dimension: cleaning_fee
    type: number
    sql: ${TABLE}.cleaning_fee

  - dimension: closet_info
    type: string
    sql: ${TABLE}.closet_info

  - dimension: closet_photos
    type: string
    sql: ${TABLE}.closet_photos

  - dimension: contact_frequency
    type: number
    sql: ${TABLE}.contact_frequency

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: deactivated_by_id
    type: number
    sql: ${TABLE}.deactivated_by_id

  - dimension: deactivation_reason
    type: string
    sql: ${TABLE}.deactivation_reason

  - dimension: deactivation_type
    type: number
    sql: ${TABLE}.deactivation_type

  - dimension: deposit_status
    type: string
    sql: ${TABLE}.deposit_status

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: elderly_and_mobility_challenges
    type: string
    sql: ${TABLE}.elderly_and_mobility_challenges

  - dimension: entry_method
    type: number
    sql: ${TABLE}.entry_method

  - dimension: faq_link
    type: string
    sql: ${TABLE}.faq_link

  - dimension: finished_config
    type: yesno
    sql: ${TABLE}.finished_config

  - dimension: finished_setup
    type: yesno
    sql: ${TABLE}.finished_setup

  - dimension: flights_of_stairs
    type: number
    sql: ${TABLE}.flights_of_stairs

  - dimension: floor_number
    type: number
    sql: ${TABLE}.floor_number

  - dimension: full_bed_count
    type: number
    sql: ${TABLE}.full_bed_count

  - dimension: guarantee_amount
    type: number
    sql: ${TABLE}.guarantee_amount

  - dimension: guest_communication_preference
    type: number
    sql: ${TABLE}.guest_communication_preference

  - dimension: has_ever_been_active
    type: yesno
    sql: ${TABLE}.has_ever_been_active

  - dimension: has_visited_dashboard
    type: yesno
    sql: ${TABLE}.has_visited_dashboard

  - dimension: home_type
    type: string
    sql: ${TABLE}.home_type

  - dimension: indoor_square_footage
    type: number
    sql: ${TABLE}.indoor_square_footage

  - dimension: infographic_link
    type: string
    sql: ${TABLE}.infographic_link

  - dimension: inspection_areas
    type: string
    sql: ${TABLE}.inspection_areas

  - dimension: instant_book
    type: yesno
    sql: ${TABLE}.instant_book

  - dimension: instant_book_lead_time
    type: number
    sql: ${TABLE}.instant_book_lead_time

  - dimension: instant_booking_visibility
    type: string
    sql: ${TABLE}.instant_booking_visibility

  - dimension: king_bed_count
    type: number
    sql: ${TABLE}.king_bed_count

  - dimension: kitchen_and_toilet
    type: string
    sql: ${TABLE}.kitchen_and_toilet

  - dimension: kitchen_count
    type: number
    sql: ${TABLE}.kitchen_count

  - dimension: latest_base_price
    type: number
    sql: ${TABLE}.latest_base_price

  - dimension: lifecycle_step
    type: number
    sql: ${TABLE}.lifecycle_step

  - dimension: lightbulb_info
    type: string
    sql: ${TABLE}.lightbulb_info

  - dimension: listing_link
    type: string
    sql: ${TABLE}.listing_link

  - dimension: listing_phone_number
    type: string
    sql: ${TABLE}.listing_phone_number

  - dimension: lockbox_code
    type: string
    sql: ${TABLE}.lockbox_code

  - dimension: lockbox_location
    type: string
    sql: ${TABLE}.lockbox_location

  - dimension: long_summary
    type: string
    sql: ${TABLE}.long_summary

  - dimension: long_title
    type: string
    sql: ${TABLE}.long_title

  - dimension: maintenance_preapproval_limit
    type: number
    sql: ${TABLE}.maintenance_preapproval_limit

  - dimension: max_night_reservations
    type: number
    sql: ${TABLE}.max_night_reservations

  - dimension: min_night_reservations
    type: number
    sql: ${TABLE}.min_night_reservations

  - dimension: misc_info
    type: string
    sql: ${TABLE}.misc_info

  - dimension: moniture_trackable_id
    type: number
    sql: ${TABLE}.moniture_trackable_id

  - dimension: monthly_discount_percentage
    type: number
    sql: ${TABLE}.monthly_discount_percentage

  - dimension: monthly_price
    type: number
    sql: ${TABLE}.monthly_price

  - dimension: needs_us_to_create_their_airbnb_listing
    type: yesno
    sql: ${TABLE}.needs_us_to_create_their_airbnb_listing

  - dimension: notes
    type: string
    sql: ${TABLE}.notes

  - dimension: notes_for_listing
    type: string
    sql: ${TABLE}.notes_for_listing

  - dimension: offerings_group
    type: number
    sql: ${TABLE}.offerings_group

  - dimension: onboarding_details
    type: string
    sql: ${TABLE}.onboarding_details

  - dimension: onboarding_information
    type: string
    sql: ${TABLE}.onboarding_information

  - dimension: onboarding_type
    type: string
    sql: ${TABLE}.onboarding_type

  - dimension: other_preferences
    type: string
    sql: ${TABLE}.other_preferences

  - dimension: other_room_count
    type: number
    sql: ${TABLE}.other_room_count

  - dimension: owner_cleaning_fee
    type: number
    sql: ${TABLE}.owner_cleaning_fee

  - dimension: owner_maintains_supplies
    type: yesno
    sql: ${TABLE}.owner_maintains_supplies

  - dimension: owner_stocked_supplies_location
    type: string
    sql: ${TABLE}.owner_stocked_supplies_location

  - dimension: primary_heater_location
    type: string
    sql: ${TABLE}.primary_heater_location

  - dimension: property_name
    type: string
    sql: ${TABLE}.property_name

  - dimension: quality
    type: number
    sql: ${TABLE}.quality

  - dimension: queen_bed_count
    type: number
    sql: ${TABLE}.queen_bed_count

  - dimension: requires_keys_to_access
    type: yesno
    sql: ${TABLE}.requires_keys_to_access

  - dimension: reservation_prep_counter
    type: number
    sql: ${TABLE}.reservation_prep_counter

  - dimension: reservation_prep_interval
    type: number
    sql: ${TABLE}.reservation_prep_interval

  - dimension: reverted_prices
    type: yesno
    sql: ${TABLE}.reverted_prices

  - dimension: room_type
    type: string
    sql: ${TABLE}.room_type

  - dimension: security_deposit_amount
    type: number
    sql: ${TABLE}.security_deposit_amount

  - dimension: selected_managed_imported_bookings
    type: yesno
    sql: ${TABLE}.selected_managed_imported_bookings

  - dimension: short_summary
    type: string
    sql: ${TABLE}.short_summary

  - dimension: short_title
    type: string
    sql: ${TABLE}.short_title

  - dimension: stairs
    type: yesno
    sql: ${TABLE}.stairs

  - dimension: style
    type: string
    sql: ${TABLE}.style

  - dimension: suitable_for_elderly
    type: yesno
    sql: ${TABLE}.suitable_for_elderly

  - dimension: supply_closet_location
    type: string
    sql: ${TABLE}.supply_closet_location

  - dimension: third_key_tag_number
    type: string
    sql: ${TABLE}.third_key_tag_number

  - dimension: toilet_plunger_info
    type: string
    sql: ${TABLE}.toilet_plunger_info

  - dimension: tot_tax_percentage
    type: number
    sql: ${TABLE}.tot_tax_percentage

  - dimension: transaction_range
    type: number
    sql: ${TABLE}.transaction_range

  - dimension: transaction_range_set
    type: yesno
    sql: ${TABLE}.transaction_range_set

  - dimension: trash_disposal_location
    type: string
    sql: ${TABLE}.trash_disposal_location

  - dimension: twin_bed_count
    type: number
    sql: ${TABLE}.twin_bed_count

  - dimension: unavailability_cleaning_preference
    type: number
    sql: ${TABLE}.unavailability_cleaning_preference

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_has_permission_to_rent
    type: yesno
    sql: ${TABLE}.user_has_permission_to_rent

  - dimension: user_id
    type: number
    # hidden: true
    sql: ${TABLE}.user_id

  - dimension: uuid
    type: string
    sql: ${TABLE}.uuid

  - dimension: waive_low_utilization_fee
    type: yesno
    sql: ${TABLE}.waive_low_utilization_fee

  - dimension: washer_and_drier
    type: string
    sql: ${TABLE}.washer_and_drier

  - dimension: washer_and_dryer_in_unit
    type: yesno
    sql: ${TABLE}.washer_and_dryer_in_unit

  - dimension: water_heater_info
    type: string
    sql: ${TABLE}.water_heater_info

  - dimension: weekly_discount_percentage
    type: number
    sql: ${TABLE}.weekly_discount_percentage

  - dimension: weekly_price
    type: number
    sql: ${TABLE}.weekly_price

  - dimension: wifi_auth_method
    type: string
    sql: ${TABLE}.wifi_auth_method

  - dimension: wifi_location
    type: string
    sql: ${TABLE}.wifi_location

  - dimension: wifi_name
    type: string
    sql: ${TABLE}.wifi_name

  - dimension: wifi_password
    type: string
    sql: ${TABLE}.wifi_password

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - property_name
    - wifi_name
    - users.emergency_contact_name
    - users.airbnb_username
    - users.name
    - users.id

