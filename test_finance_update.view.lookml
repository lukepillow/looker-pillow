
- view: test_finance_update
  derived_table:
    sql: |
      SELECT distinct(r.id) as reservation_id,r.transaction_id,re.name as region, r.checkin,r.checkout,
      round(r.total_cost/(1+
      case a.service
      when 0 then 0
      when 2 then r.tot_tax_percentage*0.01
      end),2) as rent,
      round((r.total_cost/(1+
      case a.service
      when 0 then 0
      when 2 then r.tot_tax_percentage*0.01
      end) -airbnb_fee)*airenvy_fee_percentage*0.01,2) as pillow_fee,
      case a.service
      when 0 then 'Airbnb'
      when 2 then 'Homeaway'
      else 'Other'
      end as "Service"
      from reservations r
      join listings l
      on r.listing_id = l.id
      join accounts a
      on l.account_id = a.id
      join postal_addresses pa
      on l.property_id = pa.postally_addressable_id
      join service_areas sa
      on pa.service_area_id = sa.id
      join regions re
      on sa.region_id = re.id
      where r.canceled='false'

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: reservation_id
    type: string
    sql: ${TABLE}.reservation_id

  - dimension: transaction_id
    type: number
    sql: ${TABLE}.transaction_id

  - dimension: region
    type: string
    sql: ${TABLE}.region

  - dimension_group: check_in
    type: time
    timeframes: [date, week, year, month]
    sql: ${TABLE}.checkin

  - dimension_group: checkout
    type: time
    sql: ${TABLE}.checkout

  - dimension: rent
    type: number
    sql: ${TABLE}.rent

  - dimension: pillow_fee
    type: number
    sql: ${TABLE}.pillow_fee
    
  - measure: sum_pillow_fee
    type: sum
    sql: ${pillow_fee}

  - dimension: service
    type: string
    sql: ${TABLE}.Service

  sets:
    detail:
      - reservation_id
      - transaction_id
      - region
      - checkin_time
      - checkout_time
      - rent
      - pillow_fee
      - service

