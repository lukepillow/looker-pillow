- view: request_costs
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

  - dimension: fee_id
    type: number
    # hidden: true
    sql: ${TABLE}.fee_id

  - dimension: guest_transaction_id
    type: number
    # hidden: true
    sql: ${TABLE}.guest_transaction_id

  - dimension: marked_up_amount
    type: number
    sql: ${TABLE}.marked_up_amount

  - dimension: markup_percentage
    type: number
    sql: ${TABLE}.markup_percentage

  - dimension: pay_vendor
    type: yesno
    sql: ${TABLE}.pay_vendor

  - dimension: quantity
    type: number
    sql: ${TABLE}.quantity

  - dimension: request_id
    type: number
    # hidden: true
    sql: ${TABLE}.request_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, fees.id, guest_transactions.id, requests.id]

