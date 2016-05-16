- view: transaction_line_items
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: credits
    type: string
    sql: ${TABLE}.credits

  - dimension: debits
    type: string
    sql: ${TABLE}.debits

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: owner_earnings
    type: number
    sql: ${TABLE}.owner_earnings

  - dimension: property_id
    type: number
    sql: ${TABLE}.property_id

  - dimension: reservation_id
    type: number
    # hidden: true
    sql: ${TABLE}.reservation_id

  - dimension: reservation_total_cost
    type: number
    sql: ${TABLE}.reservation_total_cost

  - dimension_group: service
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.service_date

  - dimension: transaction_amount
    type: number
    sql: ${TABLE}.transaction_amount

  - dimension: transaction_id
    type: number
    # hidden: true
    sql: ${TABLE}.transaction_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, transactions.id, reservations.service_reservation_id]

