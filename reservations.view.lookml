- view: reservations
  fields:

  - dimension: service_reservation_id
    primary_key: true
    type: string
    sql: ${TABLE}.service_reservation_id

  - dimension: airbnb_fee
    type: number
    sql: ${TABLE}.airbnb_fee

  - dimension: airenvy_fee_percentage
    type: number
    sql: ${TABLE}.airenvy_fee_percentage

  - dimension_group: booked
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.booked_at

  - dimension: booked_by_owner
    type: yesno
    sql: ${TABLE}.booked_by_owner

  - dimension: booking_prices
    type: string
    sql: ${TABLE}.booking_prices

  - dimension: canceled
    type: yesno
    sql: ${TABLE}.canceled

  - dimension: cancellation_reason
    type: string
    sql: ${TABLE}.cancellation_reason

  - dimension: cancellation_type
    type: number
    sql: ${TABLE}.cancellation_type

  - dimension_group: checkin
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.checkin

  - dimension_group: checkout
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.checkout

  - dimension: cleaning_fee
    type: number
    sql: ${TABLE}.cleaning_fee

  - dimension: cleaning_fee_at_time_of_booking
    type: number
    sql: ${TABLE}.cleaning_fee_at_time_of_booking

  - dimension: cleaning_fee_guest_refund
    type: number
    sql: ${TABLE}.cleaning_fee_guest_refund

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: created_by_id
    type: number
    sql: ${TABLE}.created_by_id

  - dimension: created_review_task
    type: yesno
    sql: ${TABLE}.created_review_task

  - dimension: created_security_deposit_task
    type: yesno
    sql: ${TABLE}.created_security_deposit_task

  - dimension: deposit_amount_paid_to_owner
    type: number
    sql: ${TABLE}.deposit_amount_paid_to_owner

  - dimension: deposit_amount_paid_to_pillow
    type: number
    sql: ${TABLE}.deposit_amount_paid_to_pillow

  - dimension: deposit_paid_to_owner
    type: yesno
    sql: ${TABLE}.deposit_paid_to_owner

  - dimension: expectation_rating
    type: number
    sql: ${TABLE}.expectation_rating

  - dimension_group: expected_arrival
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.expected_arrival

  - dimension: final_payout_amount
    type: number
    sql: ${TABLE}.final_payout_amount

  - dimension: flexible_checkin
    type: yesno
    sql: ${TABLE}.flexible_checkin

  - dimension: flexible_checkout
    type: yesno
    sql: ${TABLE}.flexible_checkout

  - dimension: guest_count
    type: number
    sql: ${TABLE}.guest_count

  - dimension: guest_id
    type: number
    # hidden: true
    sql: ${TABLE}.guest_id

  - dimension: guest_picture_url
    type: string
    sql: ${TABLE}.guest_picture_url

  - dimension: handle_guest_payments
    type: yesno
    sql: ${TABLE}.handle_guest_payments

  - dimension: handled_offline
    type: yesno
    sql: ${TABLE}.handled_offline

  - dimension: hide_lockbox_code
    type: yesno
    sql: ${TABLE}.hide_lockbox_code

  - dimension: id
    type: number
    sql: ${TABLE}.id

  - dimension_group: last_verified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_verified

  - dimension: listing_id
    type: number
    # hidden: true
    sql: ${TABLE}.listing_id

  - dimension: lockbox_code
    type: string
    sql: ${TABLE}.lockbox_code

  - dimension: managed_by_owner
    type: yesno
    sql: ${TABLE}.managed_by_owner

  - dimension: message_created_by_id
    type: number
    sql: ${TABLE}.message_created_by_id

  - dimension: notes
    type: string
    sql: ${TABLE}.notes

  - dimension: owner_cancellation_fee
    type: number
    sql: ${TABLE}.owner_cancellation_fee

  - dimension: owner_deposit_refund_description
    type: string
    sql: ${TABLE}.owner_deposit_refund_description

  - dimension: payout_status
    type: string
    sql: ${TABLE}.payout_status

  - dimension: processing_fee
    type: number
    sql: ${TABLE}.processing_fee

  - dimension: processing_fee_guest_refund
    type: number
    sql: ${TABLE}.processing_fee_guest_refund

  - dimension: property_promotion_id
    type: number
    # hidden: true
    sql: ${TABLE}.property_promotion_id

  - dimension: rating_comment
    type: string
    sql: ${TABLE}.rating_comment

  - dimension: reservation_email
    type: string
    sql: ${TABLE}.reservation_email

  - dimension: returned_security_deposit
    type: yesno
    sql: ${TABLE}.returned_security_deposit

  - dimension: security_deposit
    type: number
    sql: ${TABLE}.security_deposit

  - dimension: security_deposit_status
    type: number
    sql: ${TABLE}.security_deposit_status

  - dimension: service
    type: string
    sql: ${TABLE}.service

  - dimension: service_confirmation_number
    type: string
    sql: ${TABLE}.service_confirmation_number

  - dimension: service_fee_percentage
    type: number
    sql: ${TABLE}.service_fee_percentage

  - dimension: service_guest_id
    type: string
    sql: ${TABLE}.service_guest_id

  - dimension: service_pays_out_to_us
    type: yesno
    sql: ${TABLE}.service_pays_out_to_us

  - dimension: special_instructions
    type: string
    sql: ${TABLE}.special_instructions

  - dimension: tot_tax_guest_refund
    type: number
    sql: ${TABLE}.tot_tax_guest_refund

  - dimension: tot_tax_percentage
    type: number
    sql: ${TABLE}.tot_tax_percentage

  - dimension: total_cost
    type: number
    sql: ${TABLE}.total_cost

  - dimension: total_cost_guest_refund
    type: number
    sql: ${TABLE}.total_cost_guest_refund

  - dimension: transaction_id
    type: number
    # hidden: true
    sql: ${TABLE}.transaction_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - service_reservation_id
    - property_promotions.id
    - listings.id
    - listings.username
    - transactions.id
    - guests.name
    - guests.id
    - activities.count
    - communications.count
    - guest_transactions.count
    - messages.count
    - requests.count
    - reservation_issues.count
    - reviews.count
    - sift_orders.count
    - transaction_credits_or_debits.count
    - transaction_line_items.count

