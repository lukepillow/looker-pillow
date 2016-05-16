- view: fellow_available_teams
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: date
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.date

  - dimension: fellow_id
    type: number
    # hidden: true
    sql: ${TABLE}.fellow_id

  - dimension: person_count
    type: number
    sql: ${TABLE}.person_count

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, fellows.name, fellows.id]

