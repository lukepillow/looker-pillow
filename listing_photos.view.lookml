- view: listing_photos
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: airbnb_id
    type: string
    sql: ${TABLE}.airbnb_id

  - dimension: comparable
    type: yesno
    sql: ${TABLE}.comparable

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: link
    type: string
    sql: ${TABLE}.link

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: order_number
    type: number
    sql: ${TABLE}.order_number

  - dimension: property_id
    type: number
    sql: ${TABLE}.property_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, name]

