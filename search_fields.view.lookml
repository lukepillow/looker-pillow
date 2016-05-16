- view: search_fields
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: admin_only
    type: yesno
    sql: ${TABLE}.admin_only

  - dimension: column_name
    type: string
    sql: ${TABLE}.column_name

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: keywords
    type: string
    sql: ${TABLE}.keywords

  - dimension: table_name
    type: string
    sql: ${TABLE}.table_name

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, column_name, table_name]

