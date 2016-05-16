- view: stripe_cards
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: address_zip
    type: string
    sql: ${TABLE}.address_zip

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

  - dimension: exp_month
    type: number
    sql: ${TABLE}.exp_month

  - dimension: exp_year
    type: number
    sql: ${TABLE}.exp_year

  - dimension: is_valid
    type: yesno
    sql: ${TABLE}.is_valid

  - dimension: last4
    type: string
    sql: ${TABLE}.last4

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: stripe_card_id
    type: string
    # hidden: true
    sql: ${TABLE}.stripe_card_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, name, stripe_cards.name, stripe_cards.id, stripe_cards.count]

