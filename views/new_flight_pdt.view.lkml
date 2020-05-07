view: new_flight_pdt {
  derived_table: {
    distribution_style: all
    publish_as_db_view: yes
    sql_trigger_value: SELECT CURRENT_DATE ;;
    sql: SELECT
        flights.flight_num  AS "flight_num",
        DATE(CONVERT_TIMEZONE('America/Los_Angeles', 'America/New_York', flights.arr_time )) AS "arr_date",
        DATE(CONVERT_TIMEZONE('America/Los_Angeles', 'America/New_York', flights.dep_time )) AS "dep_date",
        COUNT(*) AS "count"
      FROM public.flights  AS flights

      GROUP BY 1,2,3
      ORDER BY 2 DESC
       ;;
  }

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
