- view: guest_transactions
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: is_for_rent
    type: yesno
    sql: ${TABLE}.is_for_rent

  - dimension: receipt_link
    type: string
    sql: ${TABLE}.receipt_link

  - dimension: reservation_id
    type: number
    # hidden: true
    sql: ${TABLE}.reservation_id

  - dimension: status
    type: number
    sql: ${TABLE}.status

  - dimension: stripe_transaction_id
    type: string
    sql: ${TABLE}.stripe_transaction_id

  - dimension: type
    type: string
    sql: ${TABLE}.type

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, reservations.service_reservation_id, communications.count, request_costs.count]

