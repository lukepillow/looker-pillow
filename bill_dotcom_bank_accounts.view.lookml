- view: bill_dotcom_bank_accounts
  fields:

  - dimension: bill_dotcom_bank_account_id
    primary_key: true
    type: string
    sql: ${TABLE}.bill_dotcom_bank_account_id

  - dimension: bank_accountable_id
    type: number
    sql: ${TABLE}.bank_accountable_id

  - dimension: bank_accountable_type
    type: string
    sql: ${TABLE}.bank_accountable_type

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: id
    type: number
    sql: ${TABLE}.id

  - dimension: last4
    type: string
    sql: ${TABLE}.last4

  - dimension: routing_number
    type: string
    sql: ${TABLE}.routing_number

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [bill_dotcom_bank_account_id]

