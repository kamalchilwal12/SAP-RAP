CLASS zcl_dbg_smoke4 DEFINITION PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.

CLASS zcl_dbg_smoke4 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( |Running as { sy-uname }| ).
    DATA(lv_i) = 1.
    lv_i = lv_i + 41.
    out->write( |Debug smoke test value: { lv_i }| ).
  ENDMETHOD.
ENDCLASS.
