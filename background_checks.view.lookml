- view: background_checks
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: background_candidate_id
    type: number
    sql: ${TABLE}.background_candidate_id

  - dimension: background_candidate_type
    type: string
    sql: ${TABLE}.background_candidate_type

  - dimension: candidate_id
    type: string
    sql: ${TABLE}.candidate_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: report_finished
    type: yesno
    sql: ${TABLE}.report_finished

  - dimension: report_id
    type: string
    sql: ${TABLE}.report_id

  - dimension: status
    type: string
    sql: ${TABLE}.status

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

