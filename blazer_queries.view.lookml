- view: blazer_queries
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: backfill_every_day
    type: yesno
    sql: ${TABLE}.backfill_every_day

  - dimension: backfill_type
    type: number
    sql: ${TABLE}.backfill_type

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: creator_id
    type: number
    sql: ${TABLE}.creator_id

  - dimension: data_source
    type: string
    sql: ${TABLE}.data_source

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: display_type
    type: number
    sql: ${TABLE}.display_type

  - dimension: job_type
    type: number
    sql: ${TABLE}.job_type

  - dimension: metric_type
    type: number
    sql: ${TABLE}.metric_type

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: parent_id
    type: number
    sql: ${TABLE}.parent_id

  - dimension: statement
    type: string
    sql: ${TABLE}.statement

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, name]

