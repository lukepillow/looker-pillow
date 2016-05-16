- view: fellows_service_areas
  fields:

  - dimension: fellow_id
    type: number
    # hidden: true
    sql: ${TABLE}.fellow_id

  - dimension: service_area_id
    type: number
    # hidden: true
    sql: ${TABLE}.service_area_id

  - measure: count
    type: count
    drill_fields: [fellows.name, fellows.id, service_areas.third_key_location_name, service_areas.id, service_areas.name]

