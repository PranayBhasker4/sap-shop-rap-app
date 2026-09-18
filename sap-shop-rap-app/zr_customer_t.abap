@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZCUSTOMER_T'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_CUSTOMER_T
  as select from ZCUSTOMER_T as Customer
{
  key customer_uuid as CustomerUUID,
  first_name as FirstName,
  last_name as LastName,
  email as Email,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed as LocalLastChanged,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed as LastChanged,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.user.lastChangedBy: true
  changed_by as ChangedBy
}
