- view: guests
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

  - dimension: stripe_customer_id
    type: string
    sql: ${TABLE}.stripe_customer_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, name, guest_services.count, reservations.count, sift_orders.count]

