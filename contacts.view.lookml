- view: contacts
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

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: phone_number
    type: string
    sql: ${TABLE}.phone_number

  - dimension: property_id
    type: number
    sql: ${TABLE}.property_id

  - dimension: responsibilities
    type: string
    sql: ${TABLE}.responsibilities

  - dimension: role
    type: string
    sql: ${TABLE}.role

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, name]

