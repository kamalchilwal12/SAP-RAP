CLASS zcl_dbg_smoke2 DEFINITION PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.
CLASS zcl_dbg_smoke2 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA(lv_i) = 1.
    DATA(lv_text) = |hello|.
    DO 30000000 TIMES.
      lv_i = lv_i + 1.
    ENDDO.
    lv_i = 42.
    out->write( |value { lv_i } text { lv_text }| ).
  ENDMETHOD.
ENDCLASS.

