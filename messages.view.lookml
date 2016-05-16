- view: messages
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: account_id
    type: number
    # hidden: true
    sql: ${TABLE}.account_id

  - dimension: action_url
    type: string
    sql: ${TABLE}.action_url

  - dimension: active
    type: yesno
    sql: ${TABLE}.active

  - dimension: bcc
    type: string
    sql: ${TABLE}.bcc

  - dimension: category
    type: string
    sql: ${TABLE}.category

  - dimension: cc
    type: string
    sql: ${TABLE}.cc

  - dimension: crawled
    type: yesno
    sql: ${TABLE}.crawled

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: error
    type: string
    sql: ${TABLE}.error

  - dimension: failed_to_send
    type: yesno
    sql: ${TABLE}.failed_to_send

  - dimension: fellow_id
    type: number
    # hidden: true
    sql: ${TABLE}.fellow_id

  - dimension: from
    type: string
    sql: ${TABLE}."from"

  - dimension: had_attachments
    type: yesno
    sql: ${TABLE}.had_attachments

  - dimension: html
    type: string
    sql: ${TABLE}.html

  - dimension: inbound
    type: yesno
    sql: ${TABLE}.inbound

  - dimension: listing_id
    type: number
    # hidden: true
    sql: ${TABLE}.listing_id

  - dimension: message_type
    type: number
    sql: ${TABLE}.message_type

  - dimension: muy_importante
    type: yesno
    sql: ${TABLE}.muy_importante

  - dimension: parent_id
    type: number
    sql: ${TABLE}.parent_id

  - dimension: process_results
    type: string
    sql: ${TABLE}.process_results

  - dimension: replied
    type: yesno
    sql: ${TABLE}.replied

  - dimension: reply_to
    type: string
    sql: ${TABLE}.reply_to

  - dimension: reservation_id
    type: number
    # hidden: true
    sql: ${TABLE}.reservation_id

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

  - dimension: status
    type: number
    sql: ${TABLE}.status

  - dimension: subject
    type: string
    sql: ${TABLE}.subject

  - dimension: template
    type: string
    sql: ${TABLE}.template

  - dimension: text
    type: string
    sql: ${TABLE}.text

  - dimension_group: thread_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.thread_updated_at

  - dimension: thread_uuid
    type: string
    sql: ${TABLE}.thread_uuid

  - dimension: ticket
    type: yesno
    sql: ${TABLE}.ticket

  - dimension: to
    type: string
    sql: ${TABLE}."to"

  - dimension: type
    type: string
    sql: ${TABLE}.type

  - dimension: unread
    type: yesno
    sql: ${TABLE}.unread

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
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - zendesk_tickets.id
    - service_conversations.id
    - fellows.name
    - fellows.id
    - accounts.username
    - accounts.service_account_id
    - listings.id
    - listings.username
    - reservations.service_reservation_id
    - message_activities.count
    - message_data.count
    - message_specific_data.count

