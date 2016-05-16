- view: accounts
  fields:

  - dimension: service_account_id
    primary_key: true
    type: string
    sql: ${TABLE}.service_account_id

  - dimension: accessible
    type: yesno
    sql: ${TABLE}.accessible

  - dimension: airenvy_bank_account
    type: yesno
    sql: ${TABLE}.airenvy_bank_account

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: encrypted_password
    type: string
    sql: ${TABLE}.encrypted_password

  - dimension: id
    type: number
    sql: ${TABLE}.id

  - dimension: messages_count
    type: number
    sql: ${TABLE}.messages_count

  - dimension: service
    type: number
    sql: ${TABLE}.service

  - dimension: unread_messages_count
    type: number
    sql: ${TABLE}.unread_messages_count

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_id
    type: number
    # hidden: true
    sql: ${TABLE}.user_id

  - dimension: username
    type: string
    sql: ${TABLE}.username

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - service_account_id
    - username
    - users.emergency_contact_name
    - users.airbnb_username
    - users.name
    - users.id
    - communications.count
    - crawl_user_account_jobs.count
    - listings.count
    - messages.count
    - user_account_listing_details.count

