- view: property_histories
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: changed
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.changed_at

  - dimension: changed_by
    type: string
    sql: ${TABLE}.changed_by

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: lifecycle_step
    type: number
    sql: ${TABLE}.lifecycle_step

  - dimension: property_id
    type: number
    sql: ${TABLE}.property_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

