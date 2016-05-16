- view: zendesk_tickets
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: assignee_id
    type: number
    sql: ${TABLE}.assignee_id

  - dimension: brand_id
    type: number
    sql: ${TABLE}.brand_id

  - dimension: collaborator_ids
    type: string
    sql: ${TABLE}.collaborator_ids

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: created_at_on_zendesk
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at_on_zendesk

  - dimension: custom_fields
    type: string
    sql: ${TABLE}.custom_fields

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension_group: due
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.due_at

  - dimension: followup_ids
    type: string
    sql: ${TABLE}.followup_ids

  - dimension: forum_topic_id
    type: number
    sql: ${TABLE}.forum_topic_id

  - dimension: group_id
    type: number
    sql: ${TABLE}.group_id

  - dimension: has_incidents
    type: yesno
    sql: ${TABLE}.has_incidents

  - dimension: organization_id
    type: number
    sql: ${TABLE}.organization_id

  - dimension: priority
    type: string
    sql: ${TABLE}.priority

  - dimension: problem_id
    type: number
    sql: ${TABLE}.problem_id

  - dimension: recipient
    type: string
    sql: ${TABLE}.recipient

  - dimension: requester_id
    type: number
    sql: ${TABLE}.requester_id

  - dimension: satisfaction_rating
    type: string
    sql: ${TABLE}.satisfaction_rating

  - dimension: sharing_agreement_ids
    type: string
    sql: ${TABLE}.sharing_agreement_ids

  - dimension: status
    type: string
    sql: ${TABLE}.status

  - dimension: subject
    type: string
    sql: ${TABLE}.subject

  - dimension: submitter_id
    type: number
    sql: ${TABLE}.submitter_id

  - dimension: tags
    type: string
    sql: ${TABLE}.tags

  - dimension: ticket_form_id
    type: number
    sql: ${TABLE}.ticket_form_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension_group: updated_at_on_zendesk
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at_on_zendesk

  - dimension: url
    type: string
    sql: ${TABLE}.url

  - dimension: via
    type: string
    sql: ${TABLE}.via

  - dimension: zendesk_ticket_id
    type: number
    # hidden: true
    sql: ${TABLE}.zendesk_ticket_id

  - dimension: zendesk_ticketable_id
    type: number
    sql: ${TABLE}.zendesk_ticketable_id

  - dimension: zendesk_ticketable_type
    type: string
    sql: ${TABLE}.zendesk_ticketable_type

  - dimension: zendesk_type
    type: string
    sql: ${TABLE}.zendesk_type

  - measure: count
    type: count
    drill_fields: [id, zendesk_tickets.id, messages.count, zendesk_ticket_available_actions.count, zendesk_tickets.count]

