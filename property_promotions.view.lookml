- view: property_promotions
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

  - dimension_group: end
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.end_date

  - dimension: fee_percentage
    type: number
    sql: ${TABLE}.fee_percentage

  - dimension: fellow_id_created_by
    type: number
    value_format_name: id
    sql: ${TABLE}.fellow_id_created_by

  - dimension: original_quantity
    type: number
    sql: ${TABLE}.original_quantity

  - dimension: promotion_id
    type: number
    # hidden: true
    sql: ${TABLE}.promotion_id

  - dimension: property_id
    type: number
    sql: ${TABLE}.property_id

  - dimension: quantity
    type: number
    sql: ${TABLE}.quantity

  - dimension_group: start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.start_date

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, promotions.name, promotions.id, promotions.display_name, reservations.count]

