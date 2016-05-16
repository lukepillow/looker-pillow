- view: bill_dotcom_classifications
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: bill_dotcom_id
    type: string
    sql: ${TABLE}.bill_dotcom_id

  - dimension: classification_type
    type: number
    sql: ${TABLE}.classification_type

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, name]

