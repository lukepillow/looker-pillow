- view: property_access_points_keys
  fields:

  - dimension: property_access_point_id
    type: number
    # hidden: true
    sql: ${TABLE}.property_access_point_id

  - dimension: property_key_id
    type: number
    # hidden: true
    sql: ${TABLE}.property_key_id

  - measure: count
    type: count
    drill_fields: [property_keys.id, property_access_points.id, property_access_points.electronic_lock_brand_name]

