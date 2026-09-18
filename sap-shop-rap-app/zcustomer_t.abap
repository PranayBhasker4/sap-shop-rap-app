@EndUserText.label : 'Customer table'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zcustomer_t {

  key client         : abap.clnt not null;
  key customer_uuid  : sysuuid_x16 not null;
  first_name         : abap.char(40);
  last_name          : abap.char(40);
  email              : abap.char(100);
  local_last_changed : abp_locinst_lastchange_tstmpl;
  last_changed       : abp_lastchange_tstmpl;
  created_by         : abp_creation_user;
  changed_by         : abp_lastchange_user;

}