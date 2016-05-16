- view: property_access_points
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: access_code
    type: string
    sql: ${TABLE}.access_code

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: dependent_access_point_id
    type: number
    sql: ${TABLE}.dependent_access_point_id

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: electronic_lock_brand_name
    type: string
    sql: ${TABLE}.electronic_lock_brand_name

  - dimension: electronic_lock_code_extra
    type: string
    sql: ${TABLE}.electronic_lock_code_extra

  - dimension: electronic_lock_code_to_lock_door
    type: string
    sql: ${TABLE}.electronic_lock_code_to_lock_door

  - dimension: electronic_lock_type
    type: string
    sql: ${TABLE}.electronic_lock_type

  - dimension: image_url
    type: string
    sql: ${TABLE}.image_url

  - dimension: label
    type: string
    sql: ${TABLE}.label

  - dimension: lock_type
    type: number
    sql: ${TABLE}.lock_type

  - dimension: master_electronic_code
    type: string
    sql: ${TABLE}.master_electronic_code

  - dimension: ordinal
    type: number
    sql: ${TABLE}.ordinal

  - dimension: primary
    type: yesno
    sql: ${TABLE}."primary"

  - dimension: property_id
    type: number
    sql: ${TABLE}.property_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, electronic_lock_brand_name, property_access_points_keys.count]

