- view: blazer_checks
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: emails
    type: string
    sql: ${TABLE}.emails

  - dimension: query_id
    type: number
    sql: ${TABLE}.query_id

  - dimension: state
    type: string
    sql: ${TABLE}.state

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

