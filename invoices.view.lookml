- view: invoices
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: invoice_amount
    type: number
    sql: ${TABLE}.invoice_amount

  - dimension: month
    type: number
    sql: ${TABLE}.month

  - dimension: status
    type: string
    sql: ${TABLE}.status

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_id
    type: number
    # hidden: true
    sql: ${TABLE}.user_id

  - dimension: uuid
    type: string
    sql: ${TABLE}.uuid

  - dimension: year
    type: number
    sql: ${TABLE}.year

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
    - communications.count

