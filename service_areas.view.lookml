- view: service_areas
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: activation
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.activation_date

  - dimension: area
    type: string
    sql: ${TABLE}.area

  - dimension: booking_day_limit
    type: number
    sql: ${TABLE}.booking_day_limit

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: icon
    type: string
    sql: ${TABLE}.icon

  - dimension: market_lead_id
    type: number
    sql: ${TABLE}.market_lead_id

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: region_id
    type: number
    # hidden: true
    sql: ${TABLE}.region_id

  - dimension: temp_area
    type: string
    sql: ${TABLE}.temp_area

  - dimension: third_key_location_address
    type: string
    sql: ${TABLE}.third_key_location_address

  - dimension: third_key_location_name
    type: string
    sql: ${TABLE}.third_key_location_name

  - dimension: third_key_vault_code
    type: string
    sql: ${TABLE}.third_key_vault_code

  - dimension: third_key_vault_instructions
    type: string
    sql: ${TABLE}.third_key_vault_instructions

  - dimension: tot_tax_percentage
    type: number
    sql: ${TABLE}.tot_tax_percentage

  - dimension: transaction_range_default
    type: number
    sql: ${TABLE}.transaction_range_default

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - third_key_location_name
    - name
    - regions.name
    - regions.id
    - activities.count
    - blazer_metrics.count
    - fellows_service_areas.count
    - postal_addresses.count
    - service_area_activity_overrides.count
    - service_area_activity_priority_settings.count
    - service_areas_vendors.count

