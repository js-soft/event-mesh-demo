class lsc_ZAMQP_TEST_CDS_VIEW definition inheriting from cl_abap_behavior_saver.
  protected section.

    methods save_modified    redefinition.

    methods cleanup_finalize redefinition.

endclass.

class lsc_ZAMQP_TEST_CDS_VIEW implementation.

  method save_modified.
    if create-zamqp_test_cds_view is not initial.
      raise entity event zamqp_test_cds_view~amqp_test_created
            from value #( for entry in create-zamqp_test_cds_view
                          ( %key                = entry-%key
                            %param-item = entry-stuff ) ).
    endif.
  endmethod.

  method cleanup_finalize.
  endmethod.

endclass.
