- view: events
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: cities
    type: string
    sql: ${TABLE}.cities

  - dimension_group: end
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.end_date

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: percent_change
    type: number
    sql: ${TABLE}.percent_change

  - dimension_group: start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.start_date

  - dimension: zipcodes
    type: string
    sql: ${TABLE}.zipcodes

  - measure: count
    type: count
    drill_fields: [id, name]

