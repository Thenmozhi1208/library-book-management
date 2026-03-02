@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'Zzccit_Da_TBLELE'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZZCC_CIT_DA_TBLELE
  provider contract TRANSACTIONAL_QUERY
  as projection on ZZCR_CIT_DA_TBLELE
  association [1..1] to ZZCR_CIT_DA_TBLELE as _BaseEntity on $projection.BOOKID = _BaseEntity.BOOKID
{
  key BookID,
  Title,
  Author,
  Publisher,
  PublishYear,
  Category,
  AvailableCopies,
  TotalCopies,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  CreatedAt,
  @Semantics: {
    User.Lastchangedby: true
  }
  LastChangedBy,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
