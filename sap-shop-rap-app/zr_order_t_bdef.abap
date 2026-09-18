managed implementation in class ZBP_R_ORDER_T unique;
strict ( 2 );
with draft;
extensible;
define behavior for ZR_ORDER_T alias orders
persistent table ZORDER_T
extensible
draft table ZORDER_T_D
etag master LocalLastChanged
lock master total etag LastChanged
authorization master( global )
{
  field ( readonly )
   OrderUUID,
   LocalLastChanged,
   LastChanged,
   CreatedBy,
   ChangedBy;

  field ( numbering : managed )
   OrderUUID;


  create;
  update;
  delete;

  draft action Activate optimized;
  draft action Discard;
  draft action Edit;
  draft action Resume;
  draft determine action Prepare;

  mapping for ZORDER_T corresponding extensible
  {
    OrderUUID = ORDER_UUID;
    CustomerUUID = CUSTOMER_UUID;
    OrderDate = ORDER_DATE;
    Amount = AMOUNT;
    LocalLastChanged = LOCAL_LAST_CHANGED;
    LastChanged = LAST_CHANGED;
    CreatedBy = CREATED_BY;
    ChangedBy = CHANGED_BY;
  }

}