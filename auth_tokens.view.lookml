- view: auth_tokens
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: active
    type: yesno
    sql: ${TABLE}.active

  - dimension: app_id
    type: string
    sql: ${TABLE}.app_id

  - dimension: authenticator_id
    type: number
    sql: ${TABLE}.authenticator_id

  - dimension: authenticator_type
    type: string
    sql: ${TABLE}.authenticator_type

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: expires
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.expires_at

  - dimension: token
    type: string
    sql: ${TABLE}.token

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

