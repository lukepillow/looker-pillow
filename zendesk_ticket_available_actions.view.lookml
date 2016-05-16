- view: zendesk_ticket_available_actions
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: actions
    type: number
    sql: ${TABLE}.actions

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: zendesk_ticket_id
    type: number
    # hidden: true
    sql: ${TABLE}.zendesk_ticket_id

  - measure: count
    type: count
    drill_fields: [id, zendesk_tickets.id]

