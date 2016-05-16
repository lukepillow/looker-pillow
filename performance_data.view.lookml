- view: performance_data
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: available_weekdays
    type: number
    sql: ${TABLE}.available_weekdays

  - dimension: available_weekends
    type: number
    sql: ${TABLE}.available_weekends

  - dimension: booked_weekdays
    type: number
    sql: ${TABLE}.booked_weekdays

  - dimension: booked_weekends
    type: number
    sql: ${TABLE}.booked_weekends

  - dimension: booking_revenue
    type: number
    sql: ${TABLE}.booking_revenue

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: danger
    type: yesno
    sql: ${TABLE}.danger

  - dimension_group: end
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.end_date

  - dimension: inquiry_count
    type: number
    sql: ${TABLE}.inquiry_count

  - dimension: property_id
    type: number
    sql: ${TABLE}.property_id

  - dimension: reservations_booked_count
    type: number
    sql: ${TABLE}.reservations_booked_count

  - dimension_group: start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.start_date

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

