class ZCL_CUSTOMECM definition
  public
  inheriting from ZCL_CUSTOMECM_BASE
  final
  create public .

public section.

  methods ZIF_CUSTOMECM_HANDLER~HANDLE_ENTRY_CREATE_V1
    redefinition .
protected section.
private section.
ENDCLASS.



CLASS ZCL_CUSTOMECM IMPLEMENTATION.


METHOD ZIF_CUSTOMECM_HANDLER~HANDLE_ENTRY_CREATE_V1.

  " Event Type: z.entry.create.v1
   DATA ls_business_data TYPE STRUCTURE FOR HIERARCHY Z_entry_create_v1_1E69.



   ls_business_data = io_event->get_business_data( ).
   DATA wa TYPE zcustom_rapevent.

   wa = CORRESPONDING #( ls_business_data MAPPING stuff = item ).
   INSERT zcustom_rapevent FROM @wa.



ENDMETHOD.
ENDCLASS.
