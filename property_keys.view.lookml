- view: property_keys
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: back_image
    type: string
    sql: ${TABLE}.back_image

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: door_opening_tips
    type: string
    sql: ${TABLE}.door_opening_tips

  - dimension: door_photo
    type: string
    sql: ${TABLE}.door_photo

  - dimension: error
    type: string
    sql: ${TABLE}.error

  - dimension: front_image
    type: string
    sql: ${TABLE}.front_image

  - dimension: has_needed_copies
    type: yesno
    sql: ${TABLE}.has_needed_copies

  - dimension: key_color
    type: string
    sql: ${TABLE}.key_color

  - dimension: key_direction
    type: number
    sql: ${TABLE}.key_direction

  - dimension: key_orientation
    type: number
    sql: ${TABLE}.key_orientation

  - dimension: key_type
    type: string
    sql: ${TABLE}.key_type

  - dimension: keys_duplicated_job_id
    type: string
    sql: ${TABLE}.keys_duplicated_job_id

  - dimension: position_on_door
    type: number
    sql: ${TABLE}.position_on_door

  - dimension: property_id
    type: number
    sql: ${TABLE}.property_id

  - dimension: status
    type: number
    sql: ${TABLE}.status

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: uuid
    type: string
    sql: ${TABLE}.uuid

  - measure: count
    type: count
    drill_fields: [id, property_access_points_keys.count]

