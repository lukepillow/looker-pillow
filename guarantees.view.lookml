- view: guarantees
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: end
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.end_at

  - dimension: guarantee_data
    type: string
    sql: ${TABLE}.guarantee_data

  - dimension: notes
    type: string
    sql: ${TABLE}.notes

  - dimension_group: start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.start_at

  - dimension: total_rent
    type: number
    sql: ${TABLE}.total_rent

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
    - guarantee_documents.count
    - property_guarantees.count

