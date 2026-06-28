@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds view'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZBS_I_RAPPartner as select from zbs_dmo_partn
 //" composition of target_data_source_name as _association_name
{
    key partner          as PartnerNumber,
      name             as PartnerName,
      street           as Street,
      city             as City,
      country          as Country,
      payment_currency as PaymentCurrency
}
