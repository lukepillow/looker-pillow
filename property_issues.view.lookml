- view: property_issues
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: closed
    type: yesno
    sql: ${TABLE}.closed

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension_group: end
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.end_date

  - dimension: fellow_id_created_by
    type: number
    value_format_name: id
    sql: ${TABLE}.fellow_id_created_by

  - dimension: hide_from_owner
    type: yesno
    sql: ${TABLE}.hide_from_owner

  - dimension: issue_type
    type: number
    sql: ${TABLE}.issue_type

  - dimension: property_id
    type: number
    sql: ${TABLE}.property_id

  - dimension_group: start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.start_date

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

