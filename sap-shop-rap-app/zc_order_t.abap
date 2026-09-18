@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZORDER_T'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_ORDER_T
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_ORDER_T
  association [1..1] to ZR_ORDER_T as _BaseEntity on $projection.ORDERUUID = _BaseEntity.ORDERUUID
{
  key OrderUUID,
  CustomerUUID,
  OrderDate,
  Amount,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChanged,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChanged,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    User.Lastchangedby: true
  }
  ChangedBy,
  _BaseEntity
}
