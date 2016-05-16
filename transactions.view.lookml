- view: transactions
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

  - dimension: line_items_snapshot
    type: string
    sql: ${TABLE}.line_items_snapshot

  - dimension: property_id
    type: number
    sql: ${TABLE}.property_id

  - dimension: receipt_data_snapshot
    type: string
    sql: ${TABLE}.receipt_data_snapshot

  - dimension: receipt_link
    type: string
    sql: ${TABLE}.receipt_link

  - dimension: status
    type: number
    sql: ${TABLE}.status

  - dimension: stripe_transaction_id
    type: string
    sql: ${TABLE}.stripe_transaction_id

  - dimension: transaction_type
    type: number
    sql: ${TABLE}.transaction_type

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_id
    type: number
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - users.emergency_contact_name
    - users.airbnb_username
    - users.name
    - users.id
    - activity_fees.count
    - communications.count
    - owner_refunds.count
    - reservations.count
    - transaction_credits_or_debits.count
    - transaction_line_items.count

