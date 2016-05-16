- view: balanced_cards
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: balanced_uri
    type: string
    sql: ${TABLE}.balanced_uri

  - dimension: brand
    type: string
    sql: ${TABLE}.brand

  - dimension: card_type
    type: number
    sql: ${TABLE}.card_type

  - dimension: cardable_id
    type: number
    sql: ${TABLE}.cardable_id

  - dimension: cardable_type
    type: string
    sql: ${TABLE}.cardable_type

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: expiration_month
    type: number
    sql: ${TABLE}.expiration_month

  - dimension: expiration_year
    type: number
    sql: ${TABLE}.expiration_year

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: obscured_number
    type: string
    sql: ${TABLE}.obscured_number

  - dimension: postal_code
    type: string
    sql: ${TABLE}.postal_code

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, name]

