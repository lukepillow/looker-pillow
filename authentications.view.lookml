- view: authentications
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: authenticatable_id
    type: number
    sql: ${TABLE}.authenticatable_id

  - dimension: authenticatable_type
    type: string
    sql: ${TABLE}.authenticatable_type

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: deactivated
    type: yesno
    sql: ${TABLE}.deactivated

  - dimension_group: deactivation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.deactivation_date

  - dimension: password_hash
    type: string
    sql: ${TABLE}.password_hash

  - dimension_group: password_last_changed
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.password_last_changed_at

  - dimension_group: password_reset_sent
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.password_reset_sent_at

  - dimension: password_reset_token
    type: string
    sql: ${TABLE}.password_reset_token

  - dimension: password_salt
    type: string
    sql: ${TABLE}.password_salt

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

