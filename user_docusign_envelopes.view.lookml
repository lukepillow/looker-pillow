- view: user_docusign_envelopes
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: document_type
    type: string
    sql: ${TABLE}.document_type

  - dimension: envelope_id
    type: string
    sql: ${TABLE}.envelope_id

  - dimension: user_id
    type: number
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: [id, users.emergency_contact_name, users.airbnb_username, users.name, users.id]

