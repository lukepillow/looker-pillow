- view: guest_services
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: guest_id
    type: number
    # hidden: true
    sql: ${TABLE}.guest_id

  - dimension: service
    type: number
    sql: ${TABLE}.service

  - dimension: service_guest_id
    type: string
    sql: ${TABLE}.service_guest_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, guests.name, guests.id]

