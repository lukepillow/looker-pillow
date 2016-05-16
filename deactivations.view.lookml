- view: deactivations
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: cancel_reservation_message
    type: string
    sql: ${TABLE}.cancel_reservation_message

  - dimension: cancel_reservations
    type: yesno
    sql: ${TABLE}.cancel_reservations

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: property_id
    type: number
    sql: ${TABLE}.property_id

  - dimension: reason
    type: number
    sql: ${TABLE}.reason

  - dimension: reason_note
    type: string
    sql: ${TABLE}.reason_note

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

