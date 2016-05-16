- view: service_area_activity_priority_settings
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: service_area_id
    type: number
    # hidden: true
    sql: ${TABLE}.service_area_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: weight
    type: number
    sql: ${TABLE}.weight

  - measure: count
    type: count
    drill_fields: [id, name, service_areas.third_key_location_name, service_areas.id, service_areas.name]

