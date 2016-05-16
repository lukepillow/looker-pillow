- view: location_closed_dates
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

  - dimension: location_id
    type: number
    # hidden: true
    sql: ${TABLE}.location_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, locations.name, locations.id]

