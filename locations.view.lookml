- view: locations
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: closet_instructions
    type: string
    sql: ${TABLE}.closet_instructions

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: email
    type: string
    sql: ${TABLE}.email

  - dimension: hours_friday_end
    type: string
    sql: ${TABLE}.hours_friday_end

  - dimension: hours_friday_start
    type: string
    sql: ${TABLE}.hours_friday_start

  - dimension: hours_monday_end
    type: string
    sql: ${TABLE}.hours_monday_end

  - dimension: hours_monday_start
    type: string
    sql: ${TABLE}.hours_monday_start

  - dimension: hours_saturday_end
    type: string
    sql: ${TABLE}.hours_saturday_end

  - dimension: hours_saturday_start
    type: string
    sql: ${TABLE}.hours_saturday_start

  - dimension: hours_sunday_end
    type: string
    sql: ${TABLE}.hours_sunday_end

  - dimension: hours_sunday_start
    type: string
    sql: ${TABLE}.hours_sunday_start

  - dimension: hours_thursday_end
    type: string
    sql: ${TABLE}.hours_thursday_end

  - dimension: hours_thursday_start
    type: string
    sql: ${TABLE}.hours_thursday_start

  - dimension: hours_tuesday_end
    type: string
    sql: ${TABLE}.hours_tuesday_end

  - dimension: hours_tuesday_start
    type: string
    sql: ${TABLE}.hours_tuesday_start

  - dimension: hours_wednesday_end
    type: string
    sql: ${TABLE}.hours_wednesday_end

  - dimension: hours_wednesday_start
    type: string
    sql: ${TABLE}.hours_wednesday_start

  - dimension: lockbox_code
    type: string
    sql: ${TABLE}.lockbox_code

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: pack_quota
    type: number
    sql: ${TABLE}.pack_quota

  - dimension: phone_number
    type: string
    sql: ${TABLE}.phone_number

  - dimension: type
    type: string
    sql: ${TABLE}.type

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - name
    - activities.count
    - communications.count
    - fellows.count
    - location_closed_dates.count
    - location_contacts.count

