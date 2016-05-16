- view: sift_orders
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: guest_id
    type: number
    # hidden: true
    sql: ${TABLE}.guest_id

  - dimension: order_data
    type: string
    sql: ${TABLE}.order_data

  - dimension: reservation_id
    type: number
    # hidden: true
    sql: ${TABLE}.reservation_id

  - measure: count
    type: count
    drill_fields: [id, reservations.service_reservation_id, guests.name, guests.id]

