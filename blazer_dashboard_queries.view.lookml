- view: blazer_dashboard_queries
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: dashboard_id
    type: number
    sql: ${TABLE}.dashboard_id

  - dimension: ordinal
    type: number
    sql: ${TABLE}.ordinal

  - dimension: query_id
    type: number
    sql: ${TABLE}.query_id

  - measure: count
    type: count
    drill_fields: [id]

