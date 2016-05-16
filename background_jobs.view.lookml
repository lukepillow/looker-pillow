- view: background_jobs
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: ip_address
    type: string
    sql: ${TABLE}.ip_address

  - dimension: job_name
    type: string
    sql: ${TABLE}.job_name

  - dimension: options
    type: string
    sql: ${TABLE}.options

  - dimension: result
    type: string
    sql: ${TABLE}.result

  - dimension: status
    type: number
    sql: ${TABLE}.status

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: uuid
    type: string
    sql: ${TABLE}.uuid

  - dimension: whodunnit
    type: string
    sql: ${TABLE}.whodunnit

  - measure: count
    type: count
    drill_fields: [id, job_name]

