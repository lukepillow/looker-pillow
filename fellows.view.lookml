- view: fellows
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: activity_eligibility_overrides
    type: string
    sql: ${TABLE}.activity_eligibility_overrides

  - dimension: activity_notification_blacklist
    type: string
    sql: ${TABLE}.activity_notification_blacklist

  - dimension: balanced_bank_account_uri
    type: string
    sql: ${TABLE}.balanced_bank_account_uri

  - dimension: balanced_customer_uri
    type: string
    sql: ${TABLE}.balanced_customer_uri

  - dimension: bill_dotcom_vendor_id
    type: string
    sql: ${TABLE}.bill_dotcom_vendor_id

  - dimension: bio
    type: string
    sql: ${TABLE}.bio

  - dimension: blazer_enabled
    type: yesno
    sql: ${TABLE}.blazer_enabled

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: default_availability_shifts
    type: string
    sql: ${TABLE}.default_availability_shifts

  - dimension: email
    type: string
    sql: ${TABLE}.email

  - dimension: ip_group
    type: number
    sql: ${TABLE}.ip_group

  - dimension: location_id
    type: number
    # hidden: true
    sql: ${TABLE}.location_id

  - dimension: mobile_beta_access
    type: yesno
    sql: ${TABLE}.mobile_beta_access

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: needs_profile_pic
    type: yesno
    sql: ${TABLE}.needs_profile_pic

  - dimension: parent_id
    type: number
    sql: ${TABLE}.parent_id

  - dimension: phone_number
    type: string
    sql: ${TABLE}.phone_number

  - dimension: photo
    type: string
    sql: ${TABLE}.photo

  - dimension: rate
    type: number
    sql: ${TABLE}.rate

  - dimension: rating
    type: number
    sql: ${TABLE}.rating

  - dimension: rating_count
    type: number
    sql: ${TABLE}.rating_count

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

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - name
    - locations.name
    - locations.id
    - activities.count
    - activity_histories.count
    - availability_histories.count
    - communications.count
    - fellow_availability_shifts.count
    - fellow_available_teams.count
    - fellow_properties.count
    - fellows_service_areas.count
    - issue_reports.count
    - lockbox_codes.count
    - message_activities.count
    - messages.count
    - notes.count
    - promotions.count
    - skills.count
    - vendors.count
    - vendor_transactions.count

