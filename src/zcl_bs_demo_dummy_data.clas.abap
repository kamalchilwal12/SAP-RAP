CLASS zcl_bs_demo_dummy_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
   CONSTANTS:
    "  c_error                     TYPE zbs_dmo_position-price VALUE '37707',
      c_number_of_invoices        TYPE i VALUE 300,
      c_days_back_from_today      TYPE i VALUE 365,
      c_max_number_of_positions   TYPE i VALUE 3,
      c_max_quantity_per_position TYPE i VALUE 5.
  PROTECTED SECTION.
  PRIVATE SECTION.
  DATA:
      mt_partner         TYPE STANDARD TABLE OF zbs_dmo_partn,
      mt_material        TYPE STANDARD TABLE OF zbs_dmo_mater.

      METHODS:
      create_partner,

      create_material.
ENDCLASS.



CLASS zcl_bs_demo_dummy_data IMPLEMENTATION.
METHOD if_oo_adt_classrun~main.
    create_partner( ).
    out->write( |Partner: { lines( mt_partner ) }| ).

    create_material( ).
    out->write( |Material: { lines( mt_material ) }| ).

    ENDMETHOD.

    METHOD create_partner.
    mt_partner = VALUE #(
      ( partner = '1000000000' name = 'SAP' street = 'Demo Street 15' city = 'Walldorf' country = 'DE' payment_currency = 'EUR' )
      ( partner = '1000000001' name = 'Microsoft' street = 'Demo Street 24' city = 'Redmond' country = 'US' payment_currency = 'USD' )
      ( partner = '1000000002' name = 'Meta' street = 'Fox Street 1' city = 'Menlo Park' country = 'US' payment_currency = 'USD' )
      ( partner = '1000000003' name = 'Alibaba' street = 'Alley 15' city = 'Hangzhou' country = 'CN' payment_currency = 'CNY' )
      ( partner = '1000000004' name = 'BMW' street = 'Main Avenue 200' city = 'Munich' country = 'DE' payment_currency = 'EUR' )
      ( partner = '1000000005' name = 'Nestle' street = 'Village Alley 14' city = 'Vevey' country = 'CH' payment_currency = 'CHF' )
      ( partner = '1000000006' name = 'Gazprom' street = 'Peace Avenue 1' city = 'Sankt Petersburg' country = 'RU' payment_currency = 'RUB' )
    ).

    DELETE FROM zbs_dmo_partn.
    INSERT zbs_dmo_partn FROM TABLE @mt_partner.
  ENDMETHOD.
  METHOD create_material.
    mt_material = VALUE #(
      ( material = 'F0001'
        name = 'Peanuts'
        description = 'Roasted Peanuts from US'
        stock = '900'
        stock_unit = 'ST'
        price_per_unit = '2.50'
        currency = 'USD' )
      ( material = 'F0002'
        name = 'Rice'
        description = 'Big bag rice from china'
        stock = '120'
        stock_unit = 'BAG'
        price_per_unit = '12.00'
        currency = 'USD' )
      ( material = 'F0003'
        name = 'Eggs'
        description = 'Eggs from happy german chickens'
        stock = '550'
        stock_unit = 'PAK'
        price_per_unit = '3.15'
        currency = 'EUR' )
      ( material = 'H0001'
        name = 'USB Stick 128 GB'
        description = 'USB Stick with security features'
        stock = '30'
        stock_unit = 'ST'
        price_per_unit = '49.99'
        currency = 'EUR' )
      ( material = 'H0002'
        name = 'OLED Display 34"'
        description = 'Big and wide display with HDMI and dsiplay port'
        stock = '18'
        stock_unit = 'ST'
        price_per_unit = '440.00'
        currency = 'USD' )
      ( material = 'R0001'
        name = 'Gas'
        description = 'Gas from sibiria'
        stock = '50000'
        stock_unit = 'MMQ'
        price_per_unit = '1560.00'
        currency = 'RUB' )
    ).

    DELETE FROM zbs_dmo_mater.
    INSERT zbs_dmo_mater FROM TABLE @mt_material.
  ENDMETHOD.
ENDCLASS.
