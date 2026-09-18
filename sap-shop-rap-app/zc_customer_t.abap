@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZCUSTOMER_T'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_CUSTOMER_T
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_CUSTOMER_T
  association [1..1] to ZR_CUSTOMER_T as _BaseEntity on $projection.CUSTOMERUUID = _BaseEntity.CUSTOMERUUID
{
  key CustomerUUID,
  FirstName,
  LastName,
  Email,
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
