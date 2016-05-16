- view: property_guarantees
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: discontinued
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.discontinued_date

  - dimension: guarantee_id
    type: number
    # hidden: true
    sql: ${TABLE}.guarantee_id

  - dimension: monthly_payment
    type: number
    sql: ${TABLE}.monthly_payment

  - dimension: price_array
    type: string
    sql: ${TABLE}.price_array

  - dimension: profit_share_percent
    type: number
    sql: ${TABLE}.profit_share_percent

  - dimension: property_id
    type: number
    sql: ${TABLE}.property_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, guarantees.id]

