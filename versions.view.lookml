- view: versions
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: event
    type: string
    sql: ${TABLE}.event

  - dimension: item_id
    type: number
    sql: ${TABLE}.item_id

  - dimension: item_type
    type: string
    sql: ${TABLE}.item_type

  - dimension: object
    type: string
    sql: ${TABLE}.object

  - dimension: object_changes
    type: string
    sql: ${TABLE}.object_changes

  - dimension: whodunnit
    type: string
    sql: ${TABLE}.whodunnit

  - measure: count
    type: count
    drill_fields: [id]

