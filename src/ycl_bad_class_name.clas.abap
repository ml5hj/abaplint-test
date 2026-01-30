CLASS ycl_bad_class_name DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES yif_code_review_interface.

    METHODS this_should_be_in_an_interface.

  PRIVATE SECTION.
    METHODS too_many_statements.
    METHODS no_key_in_sql.
    METHODS use_of_hardcoded_value.
    METHODS bad_comment.
    METHODS bad_exception RAISING cx_sy_arithmetic_error.
    METHODS bad_pretty_print.
    METHODS too_many_blank_lines.
    methods commented_code.
    methods procedural_construct.
ENDCLASS.


CLASS ycl_bad_class_name IMPLEMENTATION.
  METHOD yif_code_review_interface~test_method1.
  ENDMETHOD.

  METHOD this_should_be_in_an_interface.
  ENDMETHOD.

  METHOD no_key_in_sql.
    SELECT FROM mara
      FIELDS *
      WHERE mtart = 'FERT'
      " TODO: variable is assigned but never used (ABAP cleaner)
      INTO TABLE @DATA(lt_mara).
  ENDMETHOD.

  METHOD too_many_statements.
    " TODO: variable is assigned but never used (ABAP cleaner)
    DATA lv_test TYPE i.

    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
    lv_test = 1.
  ENDMETHOD.

  METHOD use_of_hardcoded_value.
    SELECT SINGLE FROM mara
      FIELDS matnr
      WHERE matnr = 'MYMATERIAL'
      INTO @DATA(material).
  ENDMETHOD.

  METHOD bad_comment.
* these comments should not be used - note abap cleaner can fix these

  ENDMETHOD.

  METHOD bad_exception.

  ENDMETHOD.
  METHOD bad_pretty_print.
    "also note the missing space between endmethod/method
  DATA(my_var) = 'not pretty printed'.
  ENDMETHOD.

  METHOD too_many_blank_lines.
    DATA(my_var) = 'hello'.



    my_var = |change text|.
  ENDMETHOD.

  METHOD commented_code.
*    SELECT SINGLE FROM mara
*      FIELDS matnr
*      WHERE matnr = 'MYMATERIAL'
*      INTO @DATA(material).
  ENDMETHOD.

  METHOD procedural_construct.
    DATA test_class TYPE REF TO ycl_bad_class_name.
    CREATE OBJECT test_class TYPE ycl_bad_class_name.

  ENDMETHOD.

ENDCLASS.
