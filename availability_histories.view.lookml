- view: availability_histories
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: available
    type: yesno
    sql: ${TABLE}.available

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: end
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.end_date

  - dimension: fellow_id
    type: number
    # hidden: true
    sql: ${TABLE}.fellow_id

  - dimension: price
    type: number
    sql: ${TABLE}.price

  - dimension: property_id
    type: number
    sql: ${TABLE}.property_id

  - dimension_group: start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.start_date

  - dimension: summarized_for_owner
    type: yesno
    sql: ${TABLE}.summarized_for_owner

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
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - fellows.name
    - fellows.id
    - users.emergency_contact_name
    - users.airbnb_username
    - users.name
    - users.id

