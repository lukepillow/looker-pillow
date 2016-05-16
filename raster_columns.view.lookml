- view: raster_columns
  fields:

  - dimension: blocksize_x
    type: number
    sql: ${TABLE}.blocksize_x

  - dimension: blocksize_y
    type: number
    sql: ${TABLE}.blocksize_y

  - dimension: extent
    type: string
    sql: ${TABLE}.extent

  - dimension: nodata_values
    type: string
    sql: ${TABLE}.nodata_values

  - dimension: num_bands
    type: number
    sql: ${TABLE}.num_bands

  - dimension: out_db
    type: string
    sql: ${TABLE}.out_db

  - dimension: pixel_types
    type: string
    sql: ${TABLE}.pixel_types

  - dimension: r_raster_column
    type: string
    sql: ${TABLE}.r_raster_column

  - dimension: r_table_catalog
    type: string
    sql: ${TABLE}.r_table_catalog

  - dimension: r_table_name
    type: string
    sql: ${TABLE}.r_table_name

  - dimension: r_table_schema
    type: string
    sql: ${TABLE}.r_table_schema

  - dimension: regular_blocking
    type: yesno
    sql: ${TABLE}.regular_blocking

  - dimension: same_alignment
    type: yesno
    sql: ${TABLE}.same_alignment

  - dimension: scale_x
    type: number
    sql: ${TABLE}.scale_x

  - dimension: scale_y
    type: number
    sql: ${TABLE}.scale_y

  - dimension: srid
    type: number
    value_format_name: id
    sql: ${TABLE}.srid

  - measure: count
    type: count
    drill_fields: [r_table_name]

