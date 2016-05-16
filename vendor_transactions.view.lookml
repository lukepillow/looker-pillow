- view: vendor_transactions
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension: balanced_payout_uri
    type: string
    sql: ${TABLE}.balanced_payout_uri

  - dimension: bill_dotcom_bill_id
    type: string
    sql: ${TABLE}.bill_dotcom_bill_id

  - dimension: bill_dotcom_payment_id
    type: string
    sql: ${TABLE}.bill_dotcom_payment_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: error
    type: string
    sql: ${TABLE}.error

  - dimension: fellow_id
    type: number
    # hidden: true
    sql: ${TABLE}.fellow_id

  - dimension: receipt_link
    type: string
    sql: ${TABLE}.receipt_link

  - dimension: status
    type: number
    sql: ${TABLE}.status

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, fellows.name, fellows.id, activities.count, communications.count]

