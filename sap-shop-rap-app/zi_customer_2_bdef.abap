managed implementation in class zbp_i_customer_2 unique;

define behavior for ZI_CUSTOMER_2 alias Customer
persistent table zcustomer_t
lock master
{
  create;
  update;
  delete;

  field ( readonly ) CustomerUuid;
}