@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'CDS view for test event mesh connection'
@Metadata.allowExtensions: true
define root view entity ZI_ATTRIBUTES as select from zattributes
{

    key attribute_id,
    name
   
}
