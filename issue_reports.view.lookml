- view: issue_reports
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: app_id
    type: string
    sql: ${TABLE}.app_id

  - dimension: body
    type: string
    sql: ${TABLE}.body

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: data
    type: string
    sql: ${TABLE}.data

  - dimension: fellow_id
    type: number
    # hidden: true
    sql: ${TABLE}.fellow_id

  - dimension: screenshots
    type: string
    sql: ${TABLE}.screenshots

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, fellows.name, fellows.id]

