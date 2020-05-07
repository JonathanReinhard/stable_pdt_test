connection: "faa_redshift_lindsey"

# include all the views
include: "/views/**/*.view"

datagroup: test_stable_pdt_redshift_default_datagroup {
   sql_trigger: SELECT CURRENT_DATE;;
  max_cache_age: "1 hour"
}

persist_with: test_stable_pdt_redshift_default_datagroup

explore: accidents {}

explore: aircraft {}

explore: aircraft_models {}

explore: airports {}

explore: blah {}

explore: cal454 {}

explore: carriers {}

explore: case_sensitive {}

explore: flights {}

explore: flights_by_day {}

explore: myevent {}

explore: myevent_2 {}

explore: ontime {}

explore: temp2 {}
