- view: blazer_metrics
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: blazer_query_id
    type: number
    sql: ${TABLE}.blazer_query_id

  - dimension: count
    type: number
    sql: ${TABLE}.count

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: datetime
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.datetime

  - dimension: region_id
    type: number
    # hidden: true
    sql: ${TABLE}.region_id

  - dimension: service_area_id
    type: number
    # hidden: true
    sql: ${TABLE}.service_area_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: value
    type: number
    sql: ${TABLE}.value

  - dimension: value_type
    type: number
    sql: ${TABLE}.value_type

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - regions.name
    - regions.id
    - service_areas.third_key_location_name
    - service_areas.id
    - service_areas.name

