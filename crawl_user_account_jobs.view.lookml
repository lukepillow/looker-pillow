- view: crawl_user_account_jobs
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: account_id
    type: number
    # hidden: true
    sql: ${TABLE}.account_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: error
    type: number
    sql: ${TABLE}.error

  - dimension: listing_id
    type: number
    # hidden: true
    sql: ${TABLE}.listing_id

  - dimension: status
    type: number
    sql: ${TABLE}.status

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, listings.id, listings.username, accounts.username, accounts.service_account_id]

