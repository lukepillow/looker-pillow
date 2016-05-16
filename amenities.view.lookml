- view: amenities
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: airbnb_id
    type: string
    sql: ${TABLE}.airbnb_id

  - dimension: airbnb_name
    type: string
    sql: ${TABLE}.airbnb_name

  - dimension: category
    type: number
    sql: ${TABLE}.category

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: description_required
    type: yesno
    sql: ${TABLE}.description_required

  - dimension: description_template
    type: string
    sql: ${TABLE}.description_template

  - dimension: flipkey_name
    type: string
    sql: ${TABLE}.flipkey_name

  - dimension: homeaway_name
    type: string
    sql: ${TABLE}.homeaway_name

  - dimension: icon
    type: string
    sql: ${TABLE}.icon

  - dimension: important
    type: yesno
    sql: ${TABLE}.important

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_facing
    type: yesno
    sql: ${TABLE}.user_facing

  - dimension: vrbo_name
    type: string
    sql: ${TABLE}.vrbo_name

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - homeaway_name
    - airbnb_name
    - name
    - flipkey_name
    - vrbo_name

