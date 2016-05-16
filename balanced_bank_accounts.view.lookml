- view: balanced_bank_accounts
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: account_number
    type: string
    sql: ${TABLE}.account_number

  - dimension: account_type
    type: number
    sql: ${TABLE}.account_type

  - dimension: balanced_uri
    type: string
    sql: ${TABLE}.balanced_uri

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: routing_number
    type: number
    sql: ${TABLE}.routing_number

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
    - name
    - users.emergency_contact_name
    - users.airbnb_username
    - users.name
    - users.id

