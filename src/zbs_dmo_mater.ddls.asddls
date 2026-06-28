@ClientHandling.type: #CLIENT_DEPENDENT
@AbapCatalog.deliveryClass: #APPLICATION_DATA
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'material'
define table entity zbs_dmo_mater
{
      key material   : abap.char(5);
  name           : abap.char(25);
  description    : abap.char(150);
  @Semantics.quantity.unitOfMeasure : 'stock_unit'
  stock          : abap.quan(10,0);
  stock_unit     : abap.unit(3);
  @Semantics.amount.currencyCode : 'currency'
  price_per_unit : abap.curr(15,2);
  currency       : abap.cuky;
}
