- view: activity_fees
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: activity_id
    type: number
    sql: ${TABLE}.activity_id

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: created_by_id
    type: number
    sql: ${TABLE}.created_by_id

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: fee_id
    type: number
    # hidden: true
    sql: ${TABLE}.fee_id

  - dimension: handled_offline
    type: yesno
    sql: ${TABLE}.handled_offline

  - dimension: internal_description
    type: string
    sql: ${TABLE}.internal_description

  - dimension: paid
    type: yesno
    sql: ${TABLE}.paid

  - dimension: quantity
    type: number
    sql: ${TABLE}.quantity

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
    drill_fields: [id, fees.id, transactions.id, transaction_credits_or_debits.count]

