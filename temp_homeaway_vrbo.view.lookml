- view: temp_homeaway_vrbo
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.id

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension: latitude
    type: number
    sql: ${TABLE}.latitude

  - dimension: longitude
    type: number
    sql: ${TABLE}.longitude

  - dimension: service
    type: number
    sql: ${TABLE}.service

  - dimension: state
    type: string
    sql: ${TABLE}.state

  - dimension: zipcode
    type: string
    sql: ${TABLE}.zipcode

  - measure: count
    type: count
    drill_fields: [id]

