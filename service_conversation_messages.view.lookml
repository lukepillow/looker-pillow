- view: service_conversation_messages
  fields:

  - dimension: service_conversation_message_id
    primary_key: true
    type: string
    sql: ${TABLE}.service_conversation_message_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: id
    type: number
    sql: ${TABLE}.id

  - dimension: message
    type: string
    sql: ${TABLE}.message

  - dimension_group: sent
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.sent_at

  - dimension: sent_via
    type: string
    sql: ${TABLE}.sent_via

  - dimension: service_conversation_id
    type: number
    # hidden: true
    sql: ${TABLE}.service_conversation_id

  - dimension: service_sender_id
    type: string
    sql: ${TABLE}.service_sender_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [service_conversation_message_id, service_conversations.id]

