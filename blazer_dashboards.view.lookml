- view: blazer_dashboards
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: master
    type: yesno
    sql: ${TABLE}.master

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - measure: count
    type: count
    drill_fields: [id, name]

