- view: owner_refunds
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

  - dimension: owner_refundable_id
    type: number
    sql: ${TABLE}.owner_refundable_id

  - dimension: owner_refundable_type
    type: string
    sql: ${TABLE}.owner_refundable_type

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
    drill_fields: [id, transactions.id, transaction_credits_or_debits.count]

