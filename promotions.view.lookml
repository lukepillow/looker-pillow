- view: promotions
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: category_id
    type: number
    sql: ${TABLE}.category_id

  - dimension: code
    type: string
    sql: ${TABLE}.code

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: display_name
    type: string
    sql: ${TABLE}.display_name

  - dimension: email
    type: string
    sql: ${TABLE}.email

  - dimension_group: expiration
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.expiration

  - dimension: fee_percentage
    type: number
    sql: ${TABLE}.fee_percentage

  - dimension: fellow_id
    type: number
    # hidden: true
    sql: ${TABLE}.fellow_id

  - dimension: max_uses
    type: number
    sql: ${TABLE}.max_uses

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: quantity
    type: number
    sql: ${TABLE}.quantity

  - dimension: times_used
    type: number
    sql: ${TABLE}.times_used

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - name
    - display_name
    - fellows.name
    - fellows.id
    - property_promotions.count

