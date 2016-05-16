- view: lockbox_codes
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: fellow_id
    type: number
    # hidden: true
    sql: ${TABLE}.fellow_id

  - dimension: lockbox_code
    type: string
    sql: ${TABLE}.lockbox_code

  - dimension: lockbox_location
    type: string
    sql: ${TABLE}.lockbox_location

  - dimension: lockbox_user
    type: number
    sql: ${TABLE}.lockbox_user

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

