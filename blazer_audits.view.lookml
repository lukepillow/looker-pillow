- view: blazer_audits
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: data_source
    type: string
    sql: ${TABLE}.data_source

  - dimension: query_id
    type: number
    sql: ${TABLE}.query_id

  - dimension: statement
    type: string
    sql: ${TABLE}.statement

  - dimension: user_id
    type: number
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: [id, users.emergency_contact_name, users.airbnb_username, users.name, users.id]

