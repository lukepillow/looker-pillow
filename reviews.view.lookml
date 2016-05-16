- view: reviews
  fields:

  - dimension: service_review_id
    primary_key: true
    type: string
    sql: ${TABLE}.service_review_id

  - dimension_group: arrival
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.arrival_date

  - dimension: comments
    type: string
    sql: ${TABLE}.comments

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: created_on_service
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_on_service

  - dimension: headline
    type: string
    sql: ${TABLE}.headline

  - dimension: id
    type: number
    sql: ${TABLE}.id

  - dimension: is_positive
    type: yesno
    sql: ${TABLE}.is_positive

  - dimension: rating
    type: number
    sql: ${TABLE}.rating

  - dimension: reservation_id
    type: number
    # hidden: true
    sql: ${TABLE}.reservation_id

  - dimension: response
    type: string
    sql: ${TABLE}.response

  - dimension: reviewer_email
    type: string
    sql: ${TABLE}.reviewer_email

  - dimension: reviewer_name
    type: string
    sql: ${TABLE}.reviewer_name

  - dimension: service
    type: number
    sql: ${TABLE}.service

  - dimension: service_property_id
    type: string
    sql: ${TABLE}.service_property_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [service_review_id, reviewer_name, reservations.service_reservation_id]

