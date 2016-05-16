- view: requests
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: activity_type
    type: string
    sql: ${TABLE}.activity_type

  - dimension: additional_info
    type: string
    sql: ${TABLE}.additional_info

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: creator_id
    type: number
    sql: ${TABLE}.creator_id

  - dimension: creator_type
    type: string
    sql: ${TABLE}.creator_type

  - dimension: inventory_quantities
    type: string
    sql: ${TABLE}.inventory_quantities

  - dimension: reservation_id
    type: number
    # hidden: true
    sql: ${TABLE}.reservation_id

  - dimension: status
    type: number
    sql: ${TABLE}.status

  - dimension: type
    type: string
    sql: ${TABLE}.type

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: urgent
    type: yesno
    sql: ${TABLE}.urgent

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - reservations.service_reservation_id
    - activities.count
    - communications.count
    - request_approvals.count
    - request_costs.count

