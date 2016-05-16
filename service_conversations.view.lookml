- view: service_conversations
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: service
    type: number
    sql: ${TABLE}.service

  - dimension: service_conversation_id
    type: string
    # hidden: true
    sql: ${TABLE}.service_conversation_id

  - dimension: service_guest_id
    type: string
    sql: ${TABLE}.service_guest_id

  - dimension: service_host_id
    type: string
    sql: ${TABLE}.service_host_id

  - dimension: service_property_id
    type: string
    sql: ${TABLE}.service_property_id

  - dimension: status
    type: string
    sql: ${TABLE}.status

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, service_conversations.id, messages.count, service_conversation_messages.count, service_conversations.count]

