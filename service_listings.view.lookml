- view: service_listings
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: accommodates
    type: number
    sql: ${TABLE}.accommodates

  - dimension: accuracy_rating
    type: number
    sql: ${TABLE}.accuracy_rating

  - dimension: active
    type: yesno
    sql: ${TABLE}.active

  - dimension: address
    type: string
    sql: ${TABLE}.address

  - dimension: amenities
    type: string
    sql: ${TABLE}.amenities

  - dimension: amenities_ids
    type: string
    sql: ${TABLE}.amenities_ids

  - dimension: availability_percent
    type: number
    sql: ${TABLE}.availability_percent

  - dimension: bathrooms
    type: number
    sql: ${TABLE}.bathrooms

  - dimension: bed_type
    type: string
    sql: ${TABLE}.bed_type

  - dimension: bedrooms
    type: number
    sql: ${TABLE}.bedrooms

  - dimension: calendar
    type: string
    sql: ${TABLE}.calendar

  - dimension: calendar_updated
    type: string
    sql: ${TABLE}.calendar_updated

  - dimension: cancellation
    type: string
    sql: ${TABLE}.cancellation

  - dimension: check_in
    type: string
    sql: ${TABLE}.check_in

  - dimension: check_in_rating
    type: number
    sql: ${TABLE}.check_in_rating

  - dimension: check_out
    type: string
    sql: ${TABLE}.check_out

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension: cleaning_fee
    type: number
    sql: ${TABLE}.cleaning_fee

  - dimension: cleanliness_rating
    type: number
    sql: ${TABLE}.cleanliness_rating

  - dimension: communication_rating
    type: number
    sql: ${TABLE}.communication_rating

  - dimension: country
    type: string
    sql: ${TABLE}.country

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: daily_average_price
    type: number
    sql: ${TABLE}.daily_average_price

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: extra_people
    type: string
    sql: ${TABLE}.extra_people

  - dimension: friend_count
    type: number
    sql: ${TABLE}.friend_count

  - dimension: from_price_per_night
    type: number
    sql: ${TABLE}.from_price_per_night

  - dimension: host_link
    type: string
    sql: ${TABLE}.host_link

  - dimension: house_rules
    type: string
    sql: ${TABLE}.house_rules

  - dimension: latitude
    type: number
    sql: ${TABLE}.latitude

  - dimension: listing_data
    type: string
    sql: ${TABLE}.listing_data

  - dimension: location_rating
    type: number
    sql: ${TABLE}.location_rating

  - dimension: longitude
    type: number
    sql: ${TABLE}.longitude

  - dimension: minimum_stay
    type: string
    sql: ${TABLE}.minimum_stay

  - dimension: monthly_price
    type: number
    sql: ${TABLE}.monthly_price

  - dimension: neighborhood
    type: string
    sql: ${TABLE}.neighborhood

  - dimension: other_review_count
    type: number
    sql: ${TABLE}.other_review_count

  - dimension: overall_rating
    type: number
    sql: ${TABLE}.overall_rating

  - dimension: pet_owner
    type: string
    sql: ${TABLE}.pet_owner

  - dimension: photos
    type: string
    sql: ${TABLE}.photos

  - dimension: property_type
    type: string
    sql: ${TABLE}.property_type

  - dimension: response_rate
    type: number
    sql: ${TABLE}.response_rate

  - dimension: response_time
    type: string
    sql: ${TABLE}.response_time

  - dimension: review_count
    type: number
    sql: ${TABLE}.review_count

  - dimension: reviews
    type: string
    sql: ${TABLE}.reviews

  - dimension: room_id
    type: string
    sql: ${TABLE}.room_id

  - dimension: room_type
    type: string
    sql: ${TABLE}.room_type

  - dimension: security_deposit
    type: number
    sql: ${TABLE}.security_deposit

  - dimension: service
    type: number
    sql: ${TABLE}.service

  - dimension: state
    type: string
    sql: ${TABLE}.state

  - dimension: title
    type: string
    sql: ${TABLE}.title

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_id
    type: string
    # hidden: true
    sql: ${TABLE}.user_id

  - dimension: value_rating
    type: number
    sql: ${TABLE}.value_rating

  - dimension: weekly_price
    type: number
    sql: ${TABLE}.weekly_price

  - dimension: zipcode
    type: string
    sql: ${TABLE}.zipcode

  - measure: count
    type: count
    drill_fields: [id, users.emergency_contact_name, users.airbnb_username, users.name, users.id]

