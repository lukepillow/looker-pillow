- view: lockbox_images
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

  - dimension: image_url
    type: string
    sql: ${TABLE}.image_url

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
    drill_fields: [id]

