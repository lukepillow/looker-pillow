- view: prospects
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: address
    type: string
    sql: ${TABLE}.address

  - dimension: address_line_1
    type: string
    sql: ${TABLE}.address_line_1

  - dimension: address_line_2
    type: string
    sql: ${TABLE}.address_line_2

  - dimension: bathroom_count
    type: number
    sql: ${TABLE}.bathroom_count

  - dimension: bedroom_count
    type: number
    sql: ${TABLE}.bedroom_count

  - dimension: campaign_id
    type: number
    sql: ${TABLE}.campaign_id

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: email
    type: string
    sql: ${TABLE}.email

  - dimension: first_name
    type: string
    sql: ${TABLE}.first_name

  - dimension: home_type
    type: string
    sql: ${TABLE}.home_type

  - dimension: last_name
    type: string
    sql: ${TABLE}.last_name

  - dimension: onboarding_checkboxes
    type: string
    sql: ${TABLE}.onboarding_checkboxes

  - dimension: ownership_status
    type: string
    sql: ${TABLE}.ownership_status

  - dimension: phone_number
    type: string
    sql: ${TABLE}.phone_number

  - dimension: postal_code
    type: string
    sql: ${TABLE}.postal_code

  - dimension: room_type
    type: string
    sql: ${TABLE}.room_type

  - dimension: source
    type: string
    sql: ${TABLE}.source

  - dimension: state
    type: string
    sql: ${TABLE}.state

  - dimension: unsubscribed_mailing_list
    type: yesno
    sql: ${TABLE}.unsubscribed_mailing_list

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, first_name, last_name]

