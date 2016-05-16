- view: owner_notes
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: category
    type: number
    sql: ${TABLE}.category

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: fellow_created_by_id
    type: number
    sql: ${TABLE}.fellow_created_by_id

  - dimension: note
    type: string
    sql: ${TABLE}.note

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_id
    type: number
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: [id, users.emergency_contact_name, users.airbnb_username, users.name, users.id]

