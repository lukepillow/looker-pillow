- view: delighted_surveys
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: comment
    type: string
    sql: ${TABLE}.comment

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: customer_created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.customer_created_at

  - dimension: customer_email
    type: string
    sql: ${TABLE}.customer_email

  - dimension: customer_name
    type: string
    sql: ${TABLE}.customer_name

  - dimension: permalink
    type: string
    sql: ${TABLE}.permalink

  - dimension: score
    type: number
    sql: ${TABLE}.score

  - dimension_group: survey_created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.survey_created_at

  - dimension_group: survey_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.survey_updated_at

  - dimension: surveyable_id
    type: number
    sql: ${TABLE}.surveyable_id

  - dimension: surveyable_subtype
    type: string
    sql: ${TABLE}.surveyable_subtype

  - dimension: surveyable_type
    type: string
    sql: ${TABLE}.surveyable_type

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, customer_name]

