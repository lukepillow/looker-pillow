- view: reservation_issues
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: category
    type: number
    sql: ${TABLE}.category

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: fellow_id_created_by
    type: number
    value_format_name: id
    sql: ${TABLE}.fellow_id_created_by

  - dimension: guest_issue
    type: yesno
    sql: ${TABLE}.guest_issue

  - dimension: issue
    type: string
    sql: ${TABLE}.issue

  - dimension_group: issue_datetime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.issue_datetime

  - dimension: priority
    type: number
    sql: ${TABLE}.priority

  - dimension: reservation_id
    type: number
    # hidden: true
    sql: ${TABLE}.reservation_id

  - dimension: resolution
    type: string
    sql: ${TABLE}.resolution

  - dimension: source
    type: string
    sql: ${TABLE}.source

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, reservations.service_reservation_id, activities.count]

