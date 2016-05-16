- view: comments
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: commentable_id
    type: number
    sql: ${TABLE}.commentable_id

  - dimension: commentable_type
    type: string
    sql: ${TABLE}.commentable_type

  - dimension: content
    type: string
    sql: ${TABLE}.content

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

