@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Interface View'
define root view entity ZI_CUSTOMER_2
  as select from zcustomer_t
{
  key customer_uuid as CustomerUuid,
  first_name        as FirstName,
  last_name         as LastName,
  email             as Email
}
