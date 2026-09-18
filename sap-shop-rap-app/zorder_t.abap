@EndUserText.label : 'Order table'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zorder_t {

  key client         : abap.clnt not null;
  key order_uuid     : sysuuid_x16 not null;
  customer_uuid      : sysuuid_x16;
  order_date         : abap.dats;
  amount             : abap.dec(10,2);
  local_last_changed : abp_locinst_lastchange_tstmpl;
  last_changed       : abp_lastchange_tstmpl;
  created_by         : abp_creation_user;
  changed_by         : abp_lastchange_user;

}