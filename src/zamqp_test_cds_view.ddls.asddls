@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'CDS view for test event mesh connection'
define root view entity ZAMQP_TEST_CDS_VIEW as select from zamqp_test_data
{
      @UI.facet: [{ id:            'Travel',
                purpose:       #STANDARD,
                type:          #IDENTIFICATION_REFERENCE,
                label:         'Travel',
                position:      10 }]
    @EndUserText.label: 'entry number'
    @EndUserText.quickInfo: 'some number'
    @UI: { lineItem: [ { position: 10 }],
    identification: [ { position: 10 }] }
    key entry,
    @EndUserText.label: 'stuff'
    @EndUserText.quickInfo: 'some text'
    @UI: { lineItem: [ { position: 20 }],
    identification: [ { position: 20 }] }
    stuff
}
