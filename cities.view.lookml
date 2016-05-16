- view: cities
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: active
    type: yesno
    sql: ${TABLE}.active

  - dimension: address1
    type: string
    sql: ${TABLE}.address1

  - dimension: address2
    type: string
    sql: ${TABLE}.address2

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension: city_bio
    type: string
    sql: ${TABLE}.city_bio

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: email
    type: string
    sql: ${TABLE}.email

  - dimension: image_url
    type: string
    sql: ${TABLE}.image_url

  - dimension: mailing_city
    type: string
    sql: ${TABLE}.mailing_city

  - dimension: mailing_state
    type: string
    sql: ${TABLE}.mailing_state

  - dimension: mco_photo
    type: string
    sql: ${TABLE}.mco_photo

  - dimension: phone_number
    type: string
    sql: ${TABLE}.phone_number

  - dimension: region_id
    type: number
    # hidden: true
    sql: ${TABLE}.region_id

  - dimension: state
    type: string
    sql: ${TABLE}.state

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: url_city
    type: string
    sql: ${TABLE}.url_city

  - dimension: zip
    type: string
    sql: ${TABLE}.zip

  - measure: count
    type: count
    drill_fields: [id, regions.name, regions.id]

