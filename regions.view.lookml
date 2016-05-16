- view: regions
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: boundary
    type: string
    sql: ${TABLE}.boundary

  - dimension: city_ops_manager_id
    type: number
    sql: ${TABLE}.city_ops_manager_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: service_area
    type: string
    sql: ${TABLE}.service_area

  - dimension: temp_service_area
    type: string
    sql: ${TABLE}.temp_service_area

  - dimension: time_zone
    type: string
    sql: ${TABLE}.time_zone

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: zipcodes
    type: string
    sql: ${TABLE}.zipcodes

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - name
    - 20150325_postal_addresses.count
    - activities.count
    - blazer_metrics.count
    - cities.count
    - postal_addresses.count
    - service_areas.count

