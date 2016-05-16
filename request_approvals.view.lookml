- view: request_approvals
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: approvable_id
    type: number
    sql: ${TABLE}.approvable_id

  - dimension: approvable_type
    type: string
    sql: ${TABLE}.approvable_type

  - dimension: approved
    type: yesno
    sql: ${TABLE}.approved

  - dimension_group: approved
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.approved_at

  - dimension: approved_by_id
    type: number
    sql: ${TABLE}.approved_by_id

  - dimension: approved_by_type
    type: string
    sql: ${TABLE}.approved_by_type

  - dimension: approved_payment
    type: yesno
    sql: ${TABLE}.approved_payment

  - dimension: cost_estimate
    type: number
    sql: ${TABLE}.cost_estimate

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: forwarded_to_support
    type: yesno
    sql: ${TABLE}.forwarded_to_support

  - dimension: notes
    type: string
    sql: ${TABLE}.notes

  - dimension: request_id
    type: number
    # hidden: true
    sql: ${TABLE}.request_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, requests.id]

