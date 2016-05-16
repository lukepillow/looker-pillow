- view: transaction_credits_or_debits
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: activity_fee_id
    type: number
    # hidden: true
    sql: ${TABLE}.activity_fee_id

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

  - dimension: exported_to_mixpanel
    type: yesno
    sql: ${TABLE}.exported_to_mixpanel

  - dimension: included_in_earnings
    type: yesno
    sql: ${TABLE}.included_in_earnings

  - dimension: item_type
    type: number
    sql: ${TABLE}.item_type

  - dimension: owner_refund_id
    type: number
    # hidden: true
    sql: ${TABLE}.owner_refund_id

  - dimension: property_id
    type: number
    sql: ${TABLE}.property_id

  - dimension: reservation_id
    type: number
    # hidden: true
    sql: ${TABLE}.reservation_id

  - dimension_group: service
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.service_date

  - dimension: transaction_id
    type: number
    # hidden: true
    sql: ${TABLE}.transaction_id

  - dimension: type
    type: string
    sql: ${TABLE}.type

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, activity_fees.id, reservations.service_reservation_id, owner_refunds.id, transactions.id]

