- view: activities
  fields:

  - dimension: mentor_activity_id
    primary_key: true
    type: number
    sql: ${TABLE}.mentor_activity_id

  - dimension: cleaner_count
    type: number
    sql: ${TABLE}.cleaner_count

  - dimension: compensation
    type: number
    sql: ${TABLE}.compensation

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: created_by
    type: string
    sql: ${TABLE}.created_by

  - dimension: creator_id
    type: number
    sql: ${TABLE}.creator_id

  - dimension_group: due
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.due_at

  - dimension: escalation_status
    type: number
    sql: ${TABLE}.escalation_status

  - dimension: exception_amount
    type: number
    sql: ${TABLE}.exception_amount

  - dimension: exception_description
    type: string
    sql: ${TABLE}.exception_description

  - dimension: fellow_id
    type: number
    # hidden: true
    sql: ${TABLE}.fellow_id

  - dimension: handled_offline
    type: yesno
    sql: ${TABLE}.handled_offline

  - dimension: has_unassigned_escalation
    type: yesno
    sql: ${TABLE}.has_unassigned_escalation

  - dimension: how_to_improve_rating
    type: string
    sql: ${TABLE}.how_to_improve_rating

  - dimension: id
    type: number
    sql: ${TABLE}.id

  - dimension: inventory_needs
    type: string
    sql: ${TABLE}.inventory_needs

  - dimension: inventory_quantities
    type: string
    sql: ${TABLE}.inventory_quantities

  - dimension: last_updated_by
    type: number
    sql: ${TABLE}.last_updated_by

  - dimension: location_id
    type: number
    # hidden: true
    sql: ${TABLE}.location_id

  - dimension: mentee_id
    type: number
    sql: ${TABLE}.mentee_id

  - dimension: note
    type: string
    sql: ${TABLE}.note

  - dimension: parent_id
    type: number
    sql: ${TABLE}.parent_id

  - dimension: priority
    type: number
    sql: ${TABLE}.priority

  - dimension: property_id
    type: number
    sql: ${TABLE}.property_id

  - dimension: rating
    type: number
    sql: ${TABLE}.rating

  - dimension: rating_comment
    type: string
    sql: ${TABLE}.rating_comment

  - dimension: rating_enabled
    type: yesno
    sql: ${TABLE}.rating_enabled

  - dimension: region_id
    type: number
    # hidden: true
    sql: ${TABLE}.region_id

  - dimension: request_id
    type: number
    # hidden: true
    sql: ${TABLE}.request_id

  - dimension: reservation_id
    type: number
    # hidden: true
    sql: ${TABLE}.reservation_id

  - dimension: reservation_issue_id
    type: number
    # hidden: true
    sql: ${TABLE}.reservation_issue_id

  - dimension: service_area_id
    type: number
    # hidden: true
    sql: ${TABLE}.service_area_id

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.start_at

  - dimension: status
    type: number
    sql: ${TABLE}.status

  - dimension: text_confirmation_code
    type: number
    sql: ${TABLE}.text_confirmation_code

  - dimension: title
    type: string
    sql: ${TABLE}.title

  - dimension: type
    type: string
    sql: ${TABLE}.type

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: uuid
    type: string
    sql: ${TABLE}.uuid

  - dimension: vendor_transaction_id
    type: number
    # hidden: true
    sql: ${TABLE}.vendor_transaction_id

  - dimension: workflow_results
    type: string
    sql: ${TABLE}.workflow_results

  - dimension: zoho_link
    type: string
    sql: ${TABLE}.zoho_link

  - dimension: zoho_request_id
    type: string
    sql: ${TABLE}.zoho_request_id

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - mentor_activity_id
    - vendor_transactions.id
    - fellows.name
    - fellows.id
    - reservations.service_reservation_id
    - locations.name
    - locations.id
    - regions.name
    - regions.id
    - requests.id
    - service_areas.third_key_location_name
    - service_areas.id
    - service_areas.name
    - reservation_issues.id

