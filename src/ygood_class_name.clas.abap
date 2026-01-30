CLASS ygood_class_name DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES yif_code_review_interface.

  PRIVATE SECTION.
    METHODS good_comment.
    METHODS good_exception RAISING ycx_ndbs_exception.
ENDCLASS.


CLASS ygood_class_name IMPLEMENTATION.
  METHOD yif_code_review_interface~test_method1.
    " TODO: variable is assigned but never used (ABAP cleaner)
    DATA(good_variable_name) = 1.
  ENDMETHOD.

  METHOD good_comment.
    " this is a good comment
  ENDMETHOD.

  METHOD good_exception.
  ENDMETHOD.
ENDCLASS.
