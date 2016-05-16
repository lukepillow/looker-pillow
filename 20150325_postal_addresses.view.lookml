- view: 20150325_postal_addresses
  sql_table_name: |
      "20150325_postal_addresses"
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: address_line_1
    type: string
    sql: ${TABLE}.address_line_1

  - dimension: address_line_2
    type: string
    sql: ${TABLE}.address_line_2

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension: country
    type: string
    sql: ${TABLE}.country

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: latitude
    type: number
    sql: ${TABLE}.latitude

  - dimension: longitude
    type: number
    sql: ${TABLE}.longitude

  - dimension: postal_code
    type: string
    sql: ${TABLE}.postal_code

  - dimension: postally_addressable_id
    type: number
    sql: ${TABLE}.postally_addressable_id

  - dimension: postally_addressable_type
    type: string
    sql: ${TABLE}.postally_addressable_type

  - dimension: region_id
    type: number
    # hidden: true
    sql: ${TABLE}.region_id

  - dimension: state
    type: string
    sql: ${TABLE}.state

  - dimension: time_zone
    type: string
    sql: ${TABLE}.time_zone

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, regions.name, regions.id]

