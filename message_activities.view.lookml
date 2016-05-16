- view: message_activities
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: action
    type: number
    sql: ${TABLE}.action

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: fellow_id
    type: number
    # hidden: true
    sql: ${TABLE}.fellow_id

  - dimension: message_id
    type: number
    # hidden: true
    sql: ${TABLE}.message_id

  - dimension: notes
    type: string
    sql: ${TABLE}.notes

  - dimension: prev_status
    type: number
    sql: ${TABLE}.prev_status

  - dimension: status
    type: number
    sql: ${TABLE}.status

  - dimension: target_fellow_id
    type: number
    sql: ${TABLE}.target_fellow_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, fellows.name, fellows.id, messages.id]

