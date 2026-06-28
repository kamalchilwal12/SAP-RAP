@ClientHandling.type: #CLIENT_DEPENDENT
@AbapCatalog.deliveryClass: #APPLICATION_DATA
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Partner Data'
define table entity zbs_dmo_partn
{
  key partner      : abap.char(10);
  name             : abap.char(60);
  street           : abap.char(80);
  city             : abap.char(60);
  country          : land1;
  payment_currency : abap.cuky;
}
