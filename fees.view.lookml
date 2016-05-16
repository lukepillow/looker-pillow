- view: fees
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension: charge_to_owner
    type: yesno
    sql: ${TABLE}.charge_to_owner

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: credit
    type: yesno
    sql: ${TABLE}.credit

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: fee_code
    type: string
    sql: ${TABLE}.fee_code

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, activity_fees.count, request_costs.count]

