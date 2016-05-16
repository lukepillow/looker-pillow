- view: faqs
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: category
    type: number
    sql: ${TABLE}.category

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: for_onboarding
    type: yesno
    sql: ${TABLE}.for_onboarding

  - dimension: ordinal
    type: number
    sql: ${TABLE}.ordinal

  - dimension: parent_id
    type: number
    sql: ${TABLE}.parent_id

  - dimension: required
    type: yesno
    sql: ${TABLE}.required

  - dimension: show_title
    type: yesno
    sql: ${TABLE}.show_title

  - dimension: title
    type: string
    sql: ${TABLE}.title

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_editable
    type: yesno
    sql: ${TABLE}.user_editable

  - measure: count
    type: count
    drill_fields: [id, questions.count]

