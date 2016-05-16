- view: cleaners
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: url_id
    type: string
    sql: ${TABLE}.url_id

  - measure: count
    type: count
    drill_fields: [id, name]

