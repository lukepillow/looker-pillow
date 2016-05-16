- view: inventories
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: count
    type: number
    sql: ${TABLE}.count

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: following_day_estimate
    type: number
    sql: ${TABLE}.following_day_estimate

  - dimension: inventory_type
    type: number
    sql: ${TABLE}.inventory_type

  - dimension: inventoryable_id
    type: number
    sql: ${TABLE}.inventoryable_id

  - dimension: inventoryable_type
    type: string
    sql: ${TABLE}.inventoryable_type

  - dimension: next_day_estimate
    type: number
    sql: ${TABLE}.next_day_estimate

  - dimension: seven_day_estimate
    type: number
    sql: ${TABLE}.seven_day_estimate

  - dimension: today_estimate
    type: number
    sql: ${TABLE}.today_estimate

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at


