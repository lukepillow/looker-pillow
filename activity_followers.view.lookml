- view: activity_followers
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: activity_id
    type: number
    sql: ${TABLE}.activity_id

  - dimension: change_viewed
    type: yesno
    sql: ${TABLE}.change_viewed

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: follower_id
    type: number
    sql: ${TABLE}.follower_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

