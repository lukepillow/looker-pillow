- view: seasonalities
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: booking_rate_factor
    type: number
    sql: ${TABLE}.booking_rate_factor

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension: confidence
    type: string
    sql: ${TABLE}.confidence

  - dimension: count
    type: number
    sql: ${TABLE}.count

  - dimension: month
    type: number
    sql: ${TABLE}.month

  - dimension: price_factor
    type: number
    sql: ${TABLE}.price_factor

  - dimension: zipcode
    type: string
    sql: ${TABLE}.zipcode

  - dimension: zipcode_group
    type: string
    sql: ${TABLE}.zipcode_group

