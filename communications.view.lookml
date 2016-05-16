- view: communications
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: account_id
    type: number
    # hidden: true
    sql: ${TABLE}.account_id

  - dimension: activity_id
    type: number
    sql: ${TABLE}.activity_id

  - dimension: address
    type: string
    sql: ${TABLE}.address

  - dimension: addressee
    type: string
    sql: ${TABLE}.addressee

  - dimension: category
    type: number
    sql: ${TABLE}.category

  - dimension: content_link
    type: string
    sql: ${TABLE}.content_link

  - dimension: converted
    type: yesno
    sql: ${TABLE}.converted

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: delivered
    type: yesno
    sql: ${TABLE}.delivered

  - dimension: fellow_id
    type: number
    # hidden: true
    sql: ${TABLE}.fellow_id

  - dimension: guest_transaction_id
    type: number
    # hidden: true
    sql: ${TABLE}.guest_transaction_id

  - dimension: host_phone_number
    type: string
    sql: ${TABLE}.host_phone_number

  - dimension: invoice_id
    type: number
    # hidden: true
    sql: ${TABLE}.invoice_id

  - dimension: listing_id
    type: number
    # hidden: true
    sql: ${TABLE}.listing_id

  - dimension: location_id
    type: number
    # hidden: true
    sql: ${TABLE}.location_id

  - dimension: notification_type
    type: string
    sql: ${TABLE}.notification_type

  - dimension: property_id
    type: number
    sql: ${TABLE}.property_id

  - dimension: request_id
    type: number
    # hidden: true
    sql: ${TABLE}.request_id

  - dimension: reservation_id
    type: number
    # hidden: true
    sql: ${TABLE}.reservation_id

  - dimension: text_message
    type: string
    sql: ${TABLE}.text_message

  - dimension: transaction_id
    type: number
    # hidden: true
    sql: ${TABLE}.transaction_id

  - dimension: type
    type: string
    sql: ${TABLE}.type

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_id
    type: number
    # hidden: true
    sql: ${TABLE}.user_id

  - dimension: uuid
    type: string
    sql: ${TABLE}.uuid

  - dimension: vendor_transaction_id
    type: number
    # hidden: true
    sql: ${TABLE}.vendor_transaction_id

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - reservations.service_reservation_id
    - users.emergency_contact_name
    - users.airbnb_username
    - users.name
    - users.id
    - invoices.id
    - listings.id
    - listings.username
    - accounts.username
    - accounts.service_account_id
    - vendor_transactions.id
    - fellows.name
    - fellows.id
    - locations.name
    - locations.id
    - transactions.id
    - guest_transactions.id
    - requests.id

