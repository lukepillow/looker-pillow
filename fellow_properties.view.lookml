- view: fellow_properties
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: auto_assigned
    type: yesno
    sql: ${TABLE}.auto_assigned

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: fellow_id
    type: number
    # hidden: true
    sql: ${TABLE}.fellow_id

  - dimension: priority
    type: number
    sql: ${TABLE}.priority

  - dimension: property_id
    type: number
    sql: ${TABLE}.property_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, fellows.name, fellows.id]

