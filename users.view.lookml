- view: users
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: address
    type: string
    sql: ${TABLE}.address

  - dimension: agreed_to_terms
    type: yesno
    sql: ${TABLE}.agreed_to_terms

  - dimension_group: agreed_to_terms
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.agreed_to_terms_on

  - dimension: airbnb_username
    type: string
    sql: ${TABLE}.airbnb_username

  - dimension: airenvy_fee_percentage
    type: number
    sql: ${TABLE}.airenvy_fee_percentage

  - dimension: appointment_time
    type: string
    sql: ${TABLE}.appointment_time

  - dimension: balanced_bank_account_uri
    type: string
    sql: ${TABLE}.balanced_bank_account_uri

  - dimension: balanced_customer_uri
    type: string
    sql: ${TABLE}.balanced_customer_uri

  - dimension: bill_dotcom_vendor_id
    type: string
    sql: ${TABLE}.bill_dotcom_vendor_id

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: email
    type: string
    sql: ${TABLE}.email

  - dimension: emergency_contact_name
    type: string
    sql: ${TABLE}.emergency_contact_name

  - dimension: emergency_contact_number
    type: string
    sql: ${TABLE}.emergency_contact_number

  - dimension: enabled_booking_notifications
    type: yesno
    sql: ${TABLE}.enabled_booking_notifications

  - dimension: enabled_cleaning_notifications
    type: yesno
    sql: ${TABLE}.enabled_cleaning_notifications

  - dimension: has_set_password
    type: yesno
    sql: ${TABLE}.has_set_password

  - dimension: hide_pro_tip
    type: yesno
    sql: ${TABLE}.hide_pro_tip

  - dimension_group: last_seen
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_seen_at

  - dimension: lead_tracked
    type: yesno
    sql: ${TABLE}.lead_tracked

  - dimension: marketing_global_unsubscribe
    type: yesno
    sql: ${TABLE}.marketing_global_unsubscribe

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: phone_number
    type: string
    sql: ${TABLE}.phone_number

  - dimension: photo
    type: string
    sql: ${TABLE}.photo

  - dimension_group: pro_tip_last_seen
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.pro_tip_last_seen

  - dimension: product_selection
    type: number
    sql: ${TABLE}.product_selection

  - dimension: promo_code
    type: string
    sql: ${TABLE}.promo_code

  - dimension: referrer_id
    type: number
    sql: ${TABLE}.referrer_id

  - dimension: salesforce_id
    type: string
    sql: ${TABLE}.salesforce_id

  - dimension: saw_new_features_modal
    type: yesno
    sql: ${TABLE}.saw_new_features_modal

  - dimension: sent_signup_followup
    type: yesno
    sql: ${TABLE}.sent_signup_followup

  - dimension: show_service_connect
    type: yesno
    sql: ${TABLE}.show_service_connect

  - dimension: state
    type: string
    sql: ${TABLE}.state

  - dimension: stripe_customer_id
    type: string
    sql: ${TABLE}.stripe_customer_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: viewed_owner_guidelines
    type: yesno
    sql: ${TABLE}.viewed_owner_guidelines

  - dimension: zip_code
    type: string
    sql: ${TABLE}.zip_code

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - emergency_contact_name
    - airbnb_username
    - name
    - accounts.count
    - auto_login_tokens.count
    - availability_histories.count
    - balanced_bank_accounts.count
    - blazer_audits.count
    - communications.count
    - deactivations.count
    - guarantees.count
    - invoices.count
    - owner_notes.count
    - pg_stat_statements.count
    - properties.count
    - service_listings.count
    - transactions.count
    - user_docusign_envelopes.count

