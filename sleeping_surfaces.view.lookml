- view: sleeping_surfaces
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: property_id
    type: number
    sql: ${TABLE}.property_id

  - dimension: sleeps
    type: number
    sql: ${TABLE}.sleeps

  - dimension: surface_type
    type: number
    sql: ${TABLE}.surface_type

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

