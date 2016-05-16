- view: vendor_events
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: status_id
    type: number
    sql: ${TABLE}.status_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: vendor_id
    type: number
    # hidden: true
    sql: ${TABLE}.vendor_id

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - vendors.middle_name
    - vendors.company_name
    - vendors.id
    - vendors.first_name
    - vendors.last_name

