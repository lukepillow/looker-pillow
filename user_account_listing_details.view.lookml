- view: user_account_listing_details
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

  - dimension: availability
    type: string
    sql: ${TABLE}.availability

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: listing_id
    type: number
    # hidden: true
    sql: ${TABLE}.listing_id

  - dimension: page_data
    type: string
    sql: ${TABLE}.page_data

  - dimension: prices
    type: string
    sql: ${TABLE}.prices

  - dimension: service_property_id
    type: string
    sql: ${TABLE}.service_property_id

  - dimension: thumbnail
    type: string
    sql: ${TABLE}.thumbnail

  - dimension: title
    type: string
    sql: ${TABLE}.title

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, accounts.username, accounts.service_account_id, listings.id, listings.username]

