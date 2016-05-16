- view: walkthroughs
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: add_amenities
    type: yesno
    sql: ${TABLE}.add_amenities

  - dimension: add_key_details
    type: yesno
    sql: ${TABLE}.add_key_details

  - dimension: any_questions
    type: yesno
    sql: ${TABLE}.any_questions

  - dimension: contact_info
    type: yesno
    sql: ${TABLE}.contact_info

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: details
    type: string
    sql: ${TABLE}.details

  - dimension: exchange_keys
    type: yesno
    sql: ${TABLE}.exchange_keys

  - dimension: extra_details
    type: yesno
    sql: ${TABLE}.extra_details

  - dimension: next_steps
    type: yesno
    sql: ${TABLE}.next_steps

  - dimension: property_id
    type: number
    sql: ${TABLE}.property_id

  - dimension: set_lockbox
    type: yesno
    sql: ${TABLE}.set_lockbox

  - dimension: take_photos
    type: yesno
    sql: ${TABLE}.take_photos

  - dimension: take_video
    type: yesno
    sql: ${TABLE}.take_video

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: verify_details
    type: yesno
    sql: ${TABLE}.verify_details

  - measure: count
    type: count
    drill_fields: [id]

