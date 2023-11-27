class ZCL_CUSTOMECM_BASE definition
  public
  abstract
  create public .

public section.

  interfaces /IWXBE/IF_CONSUMER .
  interfaces ZIF_CUSTOMECM_HANDLER
      all methods abstract .
protected section.
private section.

  constants:
    GENERATED_AT TYPE STRING VALUE `20231127093139` .
  constants:
    GENERATION_VERSION TYPE I VALUE 1 .
ENDCLASS.



CLASS ZCL_CUSTOMECM_BASE IMPLEMENTATION.


METHOD /IWXBE/IF_CONSUMER~HANDLE_EVENT.

  " This is a generated class, which might be overwritten in the future.
  " Go to ZCL_CUSTOMECM to add custom code.

  CASE io_event->get_cloud_event_type( ).
    WHEN 'z.entry.create.v1'.
      me->ZIF_CUSTOMECM_HANDLER~handle_entry_create_v1( NEW LCL_ENTRY_CREATE_V1( io_event ) ).
    WHEN OTHERS.
      RAISE EXCEPTION TYPE /iwxbe/cx_exception
        EXPORTING
          textid = /iwxbe/cx_exception=>not_supported.
  ENDCASE.

ENDMETHOD.
ENDCLASS.
