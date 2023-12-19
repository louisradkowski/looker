view: gradebook {
  sql_table_name: `pg-it-sandbox.looker.gradebook` ;;

  dimension: ad_enroll_sched_id {
    type: string
    sql: ${TABLE}.AdEnrollSchedID ;;
  }
  dimension: ad_teacher_id {
    type: string
    sql: ${TABLE}.AdTeacherID ;;
  }
  dimension: course_code {
    type: string
    sql: ${TABLE}.CourseCode ;;
  }
  dimension_group: end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.EndDate ;;
  }
  dimension: grade_item_category {
    type: string
    sql: ${TABLE}.GradeItemCategory ;;
  }
  dimension: grade_item_name {
    type: string
    sql: ${TABLE}.GradeItemName ;;
  }
  dimension_group: grade_last_modified {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.GradeLastModified ;;
  }
  dimension: is_aggregated_grade {
    type: number
    sql: ${TABLE}.IsAggregatedGrade ;;
  }
  dimension: legitimately_graded {
    type: number
    sql: ${TABLE}.LegitimatelyGraded ;;
  }
  dimension: points_denominator {
    type: number
    sql: ${TABLE}.PointsDenominator ;;
  }
  dimension: points_numerator {
    type: number
    sql: ${TABLE}.PointsNumerator ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.StartDate ;;
  }
  dimension: sy_student_id {
    type: string
    sql: ${TABLE}.syStudentID ;;
  }
  dimension: term_code {
    type: string
    sql: ${TABLE}.TermCode ;;
  }
  measure: count {
    type: count
    drill_fields: [grade_item_name]
  }
}
