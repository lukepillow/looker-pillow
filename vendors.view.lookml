- view: vendors
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: active
    type: yesno
    sql: ${TABLE}.active

  - dimension: additional_info
    type: string
    sql: ${TABLE}.additional_info

  - dimension: agreed_to_terms
    type: yesno
    sql: ${TABLE}.agreed_to_terms

  - dimension: availability
    type: string
    sql: ${TABLE}.availability

  - dimension: available_after_hours
    type: yesno
    sql: ${TABLE}.available_after_hours

  - dimension: background_checks_employees
    type: yesno
    sql: ${TABLE}.background_checks_employees

  - dimension: best_time_to_reach
    type: string
    sql: ${TABLE}.best_time_to_reach

  - dimension: bgcheck_acknowledged_disclosure
    type: yesno
    sql: ${TABLE}.bgcheck_acknowledged_disclosure

  - dimension: bgcheck_agreed_to_fcra
    type: yesno
    sql: ${TABLE}.bgcheck_agreed_to_fcra

  - dimension: bgcheck_auth_copy_requested
    type: yesno
    sql: ${TABLE}.bgcheck_auth_copy_requested

  - dimension: bgcheck_auth_ip_address
    type: string
    sql: ${TABLE}.bgcheck_auth_ip_address

  - dimension: bgcheck_auth_signature
    type: string
    sql: ${TABLE}.bgcheck_auth_signature

  - dimension_group: bgcheck_auth_timestamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.bgcheck_auth_timestamp

  - dimension: clean_criminal_record
    type: yesno
    sql: ${TABLE}.clean_criminal_record

  - dimension: company_name
    type: string
    sql: ${TABLE}.company_name

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: dob
    type: string
    sql: ${TABLE}.dob

  - dimension: email
    type: string
    sql: ${TABLE}.email

  - dimension: encrypted_ssn
    type: string
    sql: ${TABLE}.encrypted_ssn

  - dimension: experience
    type: string
    sql: ${TABLE}.experience

  - dimension: experienced_airbnb
    type: yesno
    sql: ${TABLE}.experienced_airbnb

  - dimension: facebook_url
    type: string
    sql: ${TABLE}.facebook_url

  - dimension: fellow_id
    type: number
    # hidden: true
    sql: ${TABLE}.fellow_id

  - dimension: finished_application
    type: yesno
    sql: ${TABLE}.finished_application

  - dimension: first_name
    type: string
    sql: ${TABLE}.first_name

  - dimension: google_url
    type: string
    sql: ${TABLE}.google_url

  - dimension: hours_weekly
    type: number
    sql: ${TABLE}.hours_weekly

  - dimension: how_did_you_hear_about_us
    type: string
    sql: ${TABLE}.how_did_you_hear_about_us

  - dimension: last_name
    type: string
    sql: ${TABLE}.last_name

  - dimension: licensed_in_state
    type: yesno
    sql: ${TABLE}.licensed_in_state

  - dimension: linkedin_url
    type: string
    sql: ${TABLE}.linkedin_url

  - dimension: manager_id
    type: number
    sql: ${TABLE}.manager_id

  - dimension: max_distance
    type: number
    sql: ${TABLE}.max_distance

  - dimension: middle_name
    type: string
    sql: ${TABLE}.middle_name

  - dimension: mobile_phone
    type: string
    sql: ${TABLE}.mobile_phone

  - dimension: mobile_phone_type
    type: number
    sql: ${TABLE}.mobile_phone_type

  - dimension: note
    type: string
    sql: ${TABLE}.note

  - dimension: operates_own_company
    type: yesno
    sql: ${TABLE}.operates_own_company

  - dimension: over18
    type: yesno
    sql: ${TABLE}.over18

  - dimension: profile_pic
    type: string
    sql: ${TABLE}.profile_pic

  - dimension: public_id
    type: string
    sql: ${TABLE}.public_id

  - dimension: quiz
    type: string
    sql: ${TABLE}.quiz

  - dimension: revoked
    type: yesno
    sql: ${TABLE}.revoked

  - dimension: smartphone_and_vehicle
    type: yesno
    sql: ${TABLE}.smartphone_and_vehicle

  - dimension: special_skills
    type: string
    sql: ${TABLE}.special_skills

  - dimension: status_id
    type: number
    sql: ${TABLE}.status_id

  - dimension: team_size
    type: number
    sql: ${TABLE}.team_size

  - dimension: training_score
    type: number
    sql: ${TABLE}.training_score

  - dimension: type_id
    type: number
    sql: ${TABLE}.type_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: why_interested_in_us
    type: string
    sql: ${TABLE}.why_interested_in_us

  - dimension: years_of_xp
    type: number
    sql: ${TABLE}.years_of_xp

  - dimension: yelp_url
    type: string
    sql: ${TABLE}.yelp_url

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - middle_name
    - company_name
    - first_name
    - last_name
    - fellows.name
    - fellows.id
    - service_areas_vendors.count
    - vendor_events.count

