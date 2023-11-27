interface ZIF_CUSTOMECM_HANDLER
  public .


  methods HANDLE_ENTRY_CREATE_V1
    importing
      !IO_EVENT type ref to ZIF_ENTRY_CREATE_V1_6EF5
    raising
      /IWXBE/CX_EXCEPTION .
endinterface.
