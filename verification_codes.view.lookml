- view: verification_codes
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: app_id
    type: string
    sql: ${TABLE}.app_id

  - dimension: code
    type: string
    sql: ${TABLE}.code

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: ip_address
    type: string
    sql: ${TABLE}.ip_address

  - dimension_group: time_sent
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.time_sent

  - dimension_group: time_used
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.time_used

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: verifying_customer_id
    type: number
    sql: ${TABLE}.verifying_customer_id

  - dimension: verifying_customer_type
    type: string
    sql: ${TABLE}.verifying_customer_type

  - measure: count
    type: count
    drill_fields: [id]

