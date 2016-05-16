- view: base_prices
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: bedrooms
    type: number
    sql: ${TABLE}.bedrooms

  - dimension: booking_rate
    type: number
    sql: ${TABLE}.booking_rate

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension: confidence
    type: string
    sql: ${TABLE}.confidence

  - dimension: count
    type: number
    sql: ${TABLE}.count

  - dimension: day_type
    type: number
    sql: ${TABLE}.day_type

  - dimension: price
    type: number
    sql: ${TABLE}.price

  - dimension: price_stdev
    type: number
    sql: ${TABLE}.price_stdev

  - dimension: zipcode
    type: string
    sql: ${TABLE}.zipcode

  - dimension: zipcode_group
    type: string
    sql: ${TABLE}.zipcode_group



