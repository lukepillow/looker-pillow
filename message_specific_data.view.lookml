- view: message_specific_data
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: data
    type: string
    sql: ${TABLE}.data

  - dimension: data_type
    type: string
    sql: ${TABLE}.data_type

  - dimension: message_id
    type: number
    # hidden: true
    sql: ${TABLE}.message_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, messages.id]

