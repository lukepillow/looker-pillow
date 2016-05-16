- view: service_area_activity_overrides
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: activity_type
    type: string
    sql: ${TABLE}.activity_type

  - dimension: advanced_cleaning_multiplier
    type: number
    sql: ${TABLE}.advanced_cleaning_multiplier

  - dimension: cleaning_bathroom_flat_rate
    type: number
    sql: ${TABLE}.cleaning_bathroom_flat_rate

  - dimension: cleaning_bedroom_flat_rate
    type: number
    sql: ${TABLE}.cleaning_bedroom_flat_rate

  - dimension: cleaning_flat_rate
    type: number
    sql: ${TABLE}.cleaning_flat_rate

  - dimension: cleaning_multiplier
    type: number
    sql: ${TABLE}.cleaning_multiplier

  - dimension: compensation
    type: number
    sql: ${TABLE}.compensation

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: duration_minutes
    type: number
    sql: ${TABLE}.duration_minutes

  - dimension: generate_enabled
    type: yesno
    sql: ${TABLE}.generate_enabled

  - dimension: linen_pack_minimum
    type: number
    sql: ${TABLE}.linen_pack_minimum

  - dimension: linen_pack_var_cost
    type: number
    sql: ${TABLE}.linen_pack_var_cost

  - dimension: penalty_percentage
    type: number
    sql: ${TABLE}.penalty_percentage

  - dimension: service_area_id
    type: number
    # hidden: true
    sql: ${TABLE}.service_area_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, service_areas.third_key_location_name, service_areas.id, service_areas.name]

