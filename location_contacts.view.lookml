- view: location_contacts
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: email
    type: string
    sql: ${TABLE}.email

  - dimension: first_name
    type: string
    sql: ${TABLE}.first_name

  - dimension: last_name
    type: string
    sql: ${TABLE}.last_name

  - dimension: location_id
    type: number
    # hidden: true
    sql: ${TABLE}.location_id

  - dimension: phone_number
    type: string
    sql: ${TABLE}.phone_number

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, first_name, last_name, locations.name, locations.id]

