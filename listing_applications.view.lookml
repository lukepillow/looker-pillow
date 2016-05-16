- view: listing_applications
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: accepted
    type: yesno
    sql: ${TABLE}.accepted

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: property_id
    type: number
    sql: ${TABLE}.property_id

  - dimension: reason
    type: string
    sql: ${TABLE}.reason

  - dimension: service
    type: number
    sql: ${TABLE}.service

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

