managed implementation in class ZBP_R_CUSTOMER_T unique;
strict ( 2 );
with draft;
extensible;
define behavior for ZR_CUSTOMER_T alias Customer
persistent table ZCUSTOMER_T
extensible
draft table ZCUSTOMER_T_D
etag master LocalLastChanged
lock master total etag LastChanged
authorization master( global )
{
  field ( readonly )
   CustomerUUID,
   LocalLastChanged,
   LastChanged,
   CreatedBy,
   ChangedBy;

  field ( numbering : managed )
   CustomerUUID;


  create;
  update;
  delete;

  draft action Activate optimized;
  draft action Discard;
  draft action Edit;
  draft action Resume;
  draft determine action Prepare;

  mapping for ZCUSTOMER_T corresponding extensible
  {
    CustomerUUID = CUSTOMER_UUID;
    FirstName = FIRST_NAME;
    LastName = LAST_NAME;
    Email = EMAIL;
    LocalLastChanged = LOCAL_LAST_CHANGED;
    LastChanged = LAST_CHANGED;
    CreatedBy = CREATED_BY;
    ChangedBy = CHANGED_BY;
  }

}