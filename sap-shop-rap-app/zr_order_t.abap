@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZORDER_T'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_ORDER_T
  as select from ZORDER_T as orders
{
  key order_uuid as OrderUUID,
  customer_uuid as CustomerUUID,
  order_date as OrderDate,
  amount as Amount,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed as LocalLastChanged,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed as LastChanged,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.user.lastChangedBy: true
  changed_by as ChangedBy
}
