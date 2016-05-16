- view: vs_database_diagrams
  fields:

  - dimension: comment
    type: string
    sql: ${TABLE}.comment

  - dimension: diadata
    type: string
    sql: ${TABLE}.diadata

  - dimension: lockinfo
    type: string
    sql: ${TABLE}.lockinfo

  - dimension_group: locktime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.locktime

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: preview
    type: string
    sql: ${TABLE}.preview

  - dimension: version
    type: string
    sql: ${TABLE}.version

  - measure: count
    type: count
    drill_fields: [name]

