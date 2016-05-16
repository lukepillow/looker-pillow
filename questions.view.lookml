- view: questions
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: answer
    type: string
    sql: ${TABLE}.answer

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: enabled
    type: yesno
    sql: ${TABLE}.enabled

  - dimension: faq_id
    type: number
    # hidden: true
    sql: ${TABLE}.faq_id

  - dimension: parent_id
    type: number
    sql: ${TABLE}.parent_id

  - dimension: property_id
    type: number
    sql: ${TABLE}.property_id

  - dimension: title
    type: string
    sql: ${TABLE}.title

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, faqs.id]

