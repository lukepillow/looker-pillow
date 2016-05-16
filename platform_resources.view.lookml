- view: platform_resources
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: action_url
    type: string
    sql: ${TABLE}.action_url

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: keywords
    type: string
    sql: ${TABLE}.keywords

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: platform
    type: number
    sql: ${TABLE}.platform

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, name]

