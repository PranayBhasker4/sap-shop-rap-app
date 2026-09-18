@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order Interface View'
define root view entity ZI_ORDER_2
  as select from zorder_t
  association [0..1] to ZI_CUSTOMER_2 as _Customer
    on $projection.CustomerUuid = _Customer.CustomerUuid
{
  key order_uuid    as OrderUuid,
      customer_uuid as CustomerUuid,
      order_date    as OrderDate,
      amount        as Amount,

      _Customer
}
