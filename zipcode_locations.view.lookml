- view: zipcode_locations
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension: latitude
    type: number
    hidden: true
    sql: ${TABLE}.latitude

  - dimension: longitude
    type: number
    hidden: true
    sql: ${TABLE}.longitude

  - dimension: state
    type: string
    sql: ${TABLE}.state

  - dimension: zip_code
    type: string
    sql: ${TABLE}.zipcode
    
  - dimension: location
    type: location
    sql_latitude: ${latitude}
    sql_longitude: ${longitude}

  - measure: count
    type: count
    drill_fields: [id]

