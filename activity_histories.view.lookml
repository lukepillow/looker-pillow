- view: activity_histories
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: activity_id
    type: number
    sql: ${TABLE}.activity_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: fellow_id
    type: number
    # hidden: true
    sql: ${TABLE}.fellow_id

  - dimension: geolocation
    type: string
    sql: ${TABLE}.geolocation

  - dimension: priority
    type: number
    sql: ${TABLE}.priority

  - dimension: status
    type: number
    sql: ${TABLE}.status

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: warning_sent
    type: yesno
    sql: ${TABLE}.warning_sent

  - measure: count
    type: count
    drill_fields: [id, fellows.name, fellows.id]

