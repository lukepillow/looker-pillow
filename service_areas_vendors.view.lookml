- view: service_areas_vendors
  fields:

  - dimension: service_area_id
    type: number
    # hidden: true
    sql: ${TABLE}.service_area_id

  - dimension: vendor_id
    type: number
    # hidden: true
    sql: ${TABLE}.vendor_id

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - service_areas.third_key_location_name
    - service_areas.id
    - service_areas.name
    - vendors.middle_name
    - vendors.company_name
    - vendors.id
    - vendors.first_name
    - vendors.last_name

