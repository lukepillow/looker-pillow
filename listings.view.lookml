- view: listings
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: account_id
    type: number
    # hidden: true
    sql: ${TABLE}.account_id

  - dimension: active
    type: yesno
    sql: ${TABLE}.active

  - dimension: api
    type: yesno
    sql: ${TABLE}.api

  - dimension: archived
    type: yesno
    sql: ${TABLE}.archived

  - dimension_group: archived
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.archived_at

  - dimension: archived_by_id
    type: number
    sql: ${TABLE}.archived_by_id

  - dimension: archived_reason
    type: string
    sql: ${TABLE}.archived_reason

  - dimension: confirmed_by_user
    type: yesno
    sql: ${TABLE}.confirmed_by_user

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: encrypted_password
    type: string
    sql: ${TABLE}.encrypted_password

  - dimension: error
    type: string
    sql: ${TABLE}.error

  - dimension: ignore_commission
    type: yesno
    sql: ${TABLE}.ignore_commission

  - dimension: import_listing_text
    type: yesno
    sql: ${TABLE}.import_listing_text

  - dimension: listing_confirmation_number
    type: string
    sql: ${TABLE}.listing_confirmation_number

  - dimension: messages_count
    type: number
    sql: ${TABLE}.messages_count

  - dimension: owner
    type: number
    sql: ${TABLE}.owner

  - dimension: price_shift
    type: number
    sql: ${TABLE}.price_shift

  - dimension: property_id
    type: number
    sql: ${TABLE}.property_id

  - dimension: property_key
    type: string
    sql: ${TABLE}.property_key

  - dimension: push_prices
    type: yesno
    sql: ${TABLE}.push_prices

  - dimension: rating
    type: number
    sql: ${TABLE}.rating

  - dimension: service_full_id
    type: string
    sql: ${TABLE}.service_full_id

  - dimension: service_property_id
    type: string
    sql: ${TABLE}.service_property_id

  - dimension: unread_messages_count
    type: number
    sql: ${TABLE}.unread_messages_count

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: username
    type: string
    sql: ${TABLE}.username

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - username
    - accounts.username
    - accounts.service_account_id
    - communications.count
    - crawl_user_account_jobs.count
    - messages.count
    - reservations.count
    - user_account_listing_details.count

