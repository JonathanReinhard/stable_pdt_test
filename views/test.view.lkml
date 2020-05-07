view: test {
  sql_table_name:  master_scratch.RP_test_stable_pdt_redshift_new_flight_pdt ;;

  dimension: flight_num {
    type: string
    sql: ${TABLE}.flight_num ;;
  }

  dimension: arr_date {
    type: date
    sql: ${TABLE}.arr_date ;;
  }

  dimension: dep_date {
    type: date
    sql: ${TABLE}.dep_date ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}.count ;;
  }

  set: detail {
    fields: [flight_num, arr_date, dep_date, count]
  }
}
