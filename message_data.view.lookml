- view: message_data
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

  - dimension: from
    type: string
    sql: ${TABLE}."from"

  - dimension: message_id
    type: number
    # hidden: true
    sql: ${TABLE}.message_id

  - dimension: subject
    type: string
    sql: ${TABLE}.subject

  - dimension: ticket
    type: yesno
    sql: ${TABLE}.ticket

  - dimension: to
    type: string
    sql: ${TABLE}."to"

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, messages.id]

