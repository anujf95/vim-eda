" Vim syntax file
" Language:    SystemVerilog
" Maintainer:  kocha <kocha.lsifrontend@gmail.com>
" Last Change: 17-Sep-2021.

" quit when a syntax file was already loaded
if exists("b:current_syntax")
    finish
endif

" Read in Verilog syntax files
runtime! syntax/verilog.vim
unlet b:current_syntax

" IEEE1800-2005
syn keyword systemverilogStatement   always_comb always_ff always_latch
syn keyword systemverilogStatement   class endclass new
syn keyword systemverilogStatement   virtual local const protected
syn keyword systemverilogStatement   package endpackage
syn keyword systemverilogStatement   rand randc constraint randomize
syn keyword systemverilogStatement   with inside dist
syn keyword systemverilogStatement   sequence endsequence randsequence
syn keyword systemverilogStatement   srandom
syn keyword systemverilogStatement   logic bit byte
syn keyword systemverilogStatement   int longint shortint
syn keyword systemverilogStatement   struct packed
syn keyword systemverilogStatement   final
syn keyword systemverilogStatement   import export
syn keyword systemverilogStatement   context pure
syn keyword systemverilogStatement   void shortreal chandle string
syn keyword systemverilogStatement   clocking endclocking iff
syn keyword systemverilogStatement   interface endinterface modport
syn keyword systemverilogStatement   cover covergroup coverpoint endgroup
syn keyword systemverilogStatement   property endproperty
syn keyword systemverilogStatement   program endprogram
syn keyword systemverilogStatement   bins binsof illegal_bins ignore_bins
syn keyword systemverilogStatement   alias matches solve static assert
syn keyword systemverilogStatement   assume super before expect bind
syn keyword systemverilogStatement   extends null tagged extern this
syn keyword systemverilogStatement   first_match throughout timeprecision
syn keyword systemverilogStatement   timeunit type union
syn keyword systemverilogStatement   uwire var cross ref wait_order intersect
syn keyword systemverilogStatement   wildcard within

syn keyword systemverilogTypeDef     typedef enum

syn keyword systemverilogConditional randcase
syn keyword systemverilogConditional unique priority

syn keyword systemverilogRepeat      return break continue
syn keyword systemverilogRepeat      do foreach

syn keyword systemverilogLabel       join_any join_none forkjoin

syn match   systemverilogAssertion   "\<\w\+\>\s*:\s*\<assert\>\_.\{-});"
syn keyword systemverilogStd         std process semaphore mailbox

" IEEE1800-2009 add
syn keyword systemverilogStatement   checker endchecker
syn keyword systemverilogStatement   accept_on reject_on
syn keyword systemverilogStatement   sync_accept_on sync_reject_on
syn keyword systemverilogStatement   eventually nexttime until until_with
syn keyword systemverilogStatement   s_always s_eventually s_nexttime s_until s_until_with
syn keyword systemverilogStatement   let untyped
syn keyword systemverilogStatement   strong weak
syn keyword systemverilogStatement   restrict global implies

syn keyword systemverilogConditional unique0

" IEEE1800-2012 add
syn keyword systemverilogStatement   implements
syn keyword systemverilogStatement   interconnect soft nettype

" SystemVerilog Methods
syn match  systemverilogMethod       "\.atobin"
syn match  systemverilogMethod       "\.atohex\>"
syn match  systemverilogMethod       "\.atoi\>"
syn match  systemverilogMethod       "\.atooct\>"
syn match  systemverilogMethod       "\.atoreal\>"
syn match  systemverilogMethod       "\.bintoa\>"
syn match  systemverilogMethod       "\.hextoa\>"
syn match  systemverilogMethod       "\.itoa\>"
syn match  systemverilogMethod       "\.octtoa\>"
syn match  systemverilogMethod       "\.realtoa\>"
syn match  systemverilogMethod       "\.len\>"
syn match  systemverilogMethod       "\.getc\>"
syn match  systemverilogMethod       "\.putc\>"
syn match  systemverilogMethod       "\.toupper\>"
syn match  systemverilogMethod       "\.tolower\>"
syn match  systemverilogMethod       "\.compare\>"
syn match  systemverilogMethod       "\.icompare\>"
syn match  systemverilogMethod       "\.substr\>"
syn match  systemverilogMethod       "\.num\>"
syn match  systemverilogMethod       "\.exists\>"
syn match  systemverilogMethod       "\.first\>"
syn match  systemverilogMethod       "\.last\>"
syn match  systemverilogMethod       "\.name\>"
syn match  systemverilogMethod       "\.index\>"
syn match  systemverilogMethod       "\.find\>"
syn match  systemverilogMethod       "\.find_first\>"
syn match  systemverilogMethod       "\.find_last\>"
syn match  systemverilogMethod       "\.find_index\>"
syn match  systemverilogMethod       "\.find_first_index\>"
syn match  systemverilogMethod       "\.find_last_index\>"
syn match  systemverilogMethod       "\.min\>"
syn match  systemverilogMethod       "\.max\>"
syn match  systemverilogMethod       "\.unique\>"
syn match  systemverilogMethod       "\.unique_index\>"
syn match  systemverilogMethod       "\.sort\>"
syn match  systemverilogMethod       "\.rsort\>"
syn match  systemverilogMethod       "\.shuffle\>"
syn match  systemverilogMethod       "\.reverse\>"
syn match  systemverilogMethod       "\.sum\>"
syn match  systemverilogMethod       "\.product\>"
syn match  systemverilogMethod       "\.xor\>"
syn match  systemverilogMethod       "\.status\>"
syn match  systemverilogMethod       "\.kill\>"
syn match  systemverilogMethod       "\.self\>"
syn match  systemverilogMethod       "\.await\>"
syn match  systemverilogMethod       "\.suspend\>"
syn match  systemverilogMethod       "\.resume\>"
syn match  systemverilogMethod       "\.get\>"
syn match  systemverilogMethod       "\.put\>"
syn match  systemverilogMethod       "\.peek\>"
syn match  systemverilogMethod       "\.try_get\>"
syn match  systemverilogMethod       "\.try_peek\>"
syn match  systemverilogMethod       "\.try_put\>"
syn match  systemverilogMethod       "\.data\>"
syn match  systemverilogMethod       "\.eq\>"
syn match  systemverilogMethod       "\.neq\>"
syn match  systemverilogMethod       "\.next\>"
syn match  systemverilogMethod       "\.prev\>"
syn match  systemverilogMethod       "\.new\>"
syn match  systemverilogMethod       "\.size\>"
syn match  systemverilogMethod       "\.delete\>"
syn match  systemverilogMethod       "\.empty\>"
syn match  systemverilogMethod       "\.pop_front\>"
syn match  systemverilogMethod       "\.pop_back\>"
syn match  systemverilogMethod       "\.push_front\>"
syn match  systemverilogMethod       "\.push_back\>"
syn match  systemverilogMethod       "\.front\>"
syn match  systemverilogMethod       "\.back\>"
syn match  systemverilogMethod       "\.insert\>"
syn match  systemverilogMethod       "\.insert_range\>"
syn match  systemverilogMethod       "\.erase\>"
syn match  systemverilogMethod       "\.erase_range\>"
syn match  systemverilogMethod       "\.set\>"
syn match  systemverilogMethod       "\.swap\>"
syn match  systemverilogMethod       "\.clear\>"
syn match  systemverilogMethod       "\.purge\>"
syn match  systemverilogMethod       "\.start\>"
syn match  systemverilogMethod       "\.finish\>"

" Folding
syn region program_fold    start="\<program\>"    end="\<endprogram\>"   transparent fold contains=ALLBUT,module_fold
syn region module_fold     start="\<module\>"     end="\<endmodule\>"    transparent fold contains=ALLBUT,program_fold
syn region begin_fold      start="\<begin\>"      end="\<end\>"          transparent fold contained
syn region checker_fold    start="\<checker\>"    end="\<endchecker\>"   transparent fold contains=ALLBUT,module_fold
syn region class_fold      start="\<class\>"      end="\<endclass\>"     transparent fold
syn region clocking_fold   start="\<clocking\>"   end="\<endclocking\>"  transparent fold
syn region config_fold     start="\<config\>"     end="\<endconfig\>"    transparent fold contains=ALLBUT,program_fold
syn region covergroup_fold start="\<covergroup\>" end="\<endgroup\>"     transparent fold contained
syn region fork_fold       start="\<fork\>"       end="\<join\(_none\|all\)?\>" transparent fold contained
syn region function_fold   start="\<function\>"   end="\<endfunction\>"  transparent fold contained
syn region generate_fold   start="\<generate\>"   end="\<endgenerate\>"  transparent fold contained
syn region interface_fold  start="\<interface\>"  end="\<endinterface\>" transparent fold
syn region package_fold    start="\<package\>"    end="\<endpackage\>"   transparent fold contains=ALLBUT,module_fold
syn region primitive_fold  start="\<primitive\>"  end="\<endprimitive\>" transparent fold contains=ALLBUT,module_fold
syn region property_fold   start="\<property\>"   end="\<endproperty\>"  transparent fold contained
syn region sequence_fold   start="\<sequence\>"   end="\<endsequence\>"  transparent fold
syn region specify_fold    start="\<specify\>"    end="\<endspecify\>"   transparent fold contains=ALLBUT,module_fold
syn region table_fold      start="\<table\>"      end="\<endtable\>"     transparent fold
syn region task_fold       start="\<task\>"       end="\<endtask\>"      transparent fold contained
syn sync fromstart
set foldmethod=syntax

" Directives
set include="^\s*`include\ \""
set define="^\s*\(`define\|parameter\|defparam\)\>\ \""

" UVM Syntax
syn keyword uvm_class    uvm_active_passive_enum
syn keyword uvm_class    uvm_adaptor
syn match   uvm_class    /\<uvm_analysis_imp_\w\+\s/
syn keyword uvm_class    uvm_barrier
syn keyword uvm_class    uvm_barrier_pool
syn keyword uvm_class    uvm_component
syn keyword uvm_class    uvm_configure_phase
syn keyword uvm_class    uvm_domain
syn keyword uvm_class    uvm_driver
syn keyword uvm_class    uvm_enum_wrapper
syn keyword uvm_class    uvm_env
syn keyword uvm_class    uvm_event
syn keyword uvm_class    uvm_event_base
syn keyword uvm_class    uvm_event_pool
syn keyword uvm_class    uvm_factory
syn keyword uvm_class    uvm_heartbeat
syn keyword uvm_class    uvm_heartbeat_cb
syn keyword uvm_class    uvm_in_order_built_in_comparator
syn keyword uvm_class    uvm_in_order_class_comparator
syn keyword uvm_class    uvm_in_order_comparator
syn keyword uvm_class    uvm_main_phase
syn keyword uvm_class    uvm_mem
syn keyword uvm_class    uvm_monitor
syn keyword uvm_class    uvm_object
syn keyword uvm_class    uvm_object_registry
syn keyword uvm_class    uvm_objection
syn keyword uvm_class    uvm_path_e
syn keyword uvm_class    uvm_phase
syn keyword uvm_class    uvm_task_phase
syn keyword uvm_class    uvm_topdown_phase
syn keyword uvm_class    uvm_bottomup_phase
syn keyword uvm_class    uvm_phase_cb
syn keyword uvm_class    uvm_pool
syn keyword uvm_class    uvm_port_base
syn keyword uvm_class    uvm_post_configure_phase
syn keyword uvm_class    uvm_post_main_phase
syn keyword uvm_class    uvm_post_reset_phase
syn keyword uvm_class    uvm_post_shutdown_phase
syn keyword uvm_class    uvm_pre_configure_phase
syn keyword uvm_class    uvm_pre_main_phase
syn keyword uvm_class    uvm_pre_reset_phase
syn keyword uvm_class    uvm_pre_shutdown_phase
syn keyword uvm_class    uvm_predict_e
syn keyword uvm_class    uvm_predictor
syn keyword uvm_class    uvm_printer
syn keyword uvm_class    uvm_printer_knobs
syn keyword uvm_class    uvm_push_driver
syn keyword uvm_class    uvm_push_sequencer
syn keyword uvm_class    uvm_recorder
syn keyword uvm_class    uvm_reg
syn keyword uvm_class    uvm_reg_adapter
syn keyword uvm_class    uvm_reg_backdoor
syn keyword uvm_class    uvm_reg_block
syn keyword uvm_class    uvm_reg_bus_op
syn keyword uvm_class    uvm_reg_cbs
syn keyword uvm_class    uvm_reg_data_t
syn keyword uvm_class    uvm_reg_field
syn keyword uvm_class    uvm_reg_item
syn keyword uvm_class    uvm_reg_map
syn keyword uvm_class    uvm_reg_predictor
syn keyword uvm_class    uvm_reg_sequence
syn keyword uvm_class    uvm_reg_transaction_order_policy
syn keyword uvm_class    uvm_report_catcher
syn keyword uvm_class    uvm_reset_phase
syn keyword uvm_class    uvm_sequence
syn keyword uvm_class    uvm_sequencer
syn keyword uvm_class    uvm_sequencer_base
syn keyword uvm_class    uvm_severity
syn keyword uvm_class    uvm_shutdown_phase
syn keyword uvm_class    uvm_test
syn keyword uvm_class    uvm_text_tr_database
syn keyword uvm_class    uvm_tlm_analysis_fifo
syn keyword uvm_class    uvm_tlm_extension
syn keyword uvm_class    uvm_tlm_extension_base
syn keyword uvm_class    uvm_tlm_fifo
syn keyword uvm_class    uvm_tlm_generic_payload
syn keyword uvm_class    uvm_tr_stream
syn keyword uvm_class    uvm_transaction

syn keyword uvm_data     adaptor
syn keyword uvm_data     analysis_export
syn keyword uvm_data     analysis_port
syn keyword uvm_data     bus_in
syn keyword uvm_data     enable_print_topology
syn keyword uvm_data     fld
syn keyword uvm_data     kind
syn keyword uvm_data     map
syn keyword uvm_data     p_sequencer
syn keyword uvm_data     parent phase
syn keyword uvm_data     path
syn keyword uvm_data     reg_ap
syn keyword uvm_data     req
syn keyword uvm_data     rsp
syn keyword uvm_data     rw
syn keyword uvm_data     seq_item_export
syn keyword uvm_data     seq_item_port
syn keyword uvm_data     starting_phase
syn keyword uvm_data     uvm_top
syn keyword uvm_data     value

syn keyword uvm_enum     UVM_ACTIVE
syn keyword uvm_enum     UVM_ALL_ON
syn keyword uvm_enum     UVM_BIN
syn keyword uvm_enum     UVM_CALL_HOOK
syn keyword uvm_enum     UVM_COUNT
syn keyword uvm_enum     UVM_DEC
syn keyword uvm_enum     UVM_DISPLAY
syn keyword uvm_enum     UVM_ERROR
syn keyword uvm_enum     UVM_EXIT
syn keyword uvm_enum     UVM_FATAL
syn keyword uvm_enum     UVM_INFO
syn keyword uvm_enum     UVM_LOG
syn keyword uvm_enum     UVM_NOCOMPARE
syn keyword uvm_enum     UVM_NOPRINT
syn keyword uvm_enum     UVM_NO_ACTION
syn keyword uvm_enum     UVM_PASSIVE
syn keyword uvm_enum     UVM_PRINT
syn keyword uvm_enum     UVM_RGM
syn keyword uvm_enum     UVM_STOP
syn keyword uvm_enum     UVM_WARNING

syn keyword uvm_macros   uvm_add_to_seq_lib
syn keyword uvm_macros   uvm_analysis_imp_decl
syn keyword uvm_macros   uvm_component_param_utils
syn keyword uvm_macros   uvm_component_utils
syn keyword uvm_macros   uvm_component_utils_begin
syn keyword uvm_macros   uvm_component_utils_end
syn keyword uvm_macros   uvm_create
syn keyword uvm_macros   uvm_create_on
syn keyword uvm_macros   uvm_create_seq
syn keyword uvm_macros   uvm_declare_p_sequencer
syn keyword uvm_macros   uvm_do
syn keyword uvm_macros   uvm_do_on
syn keyword uvm_macros   uvm_do_on_pri
syn keyword uvm_macros   uvm_do_on_pri_with
syn keyword uvm_macros   uvm_do_on_with
syn keyword uvm_macros   uvm_do_pri
syn keyword uvm_macros   uvm_do_pri_with
syn keyword uvm_macros   uvm_do_seq
syn keyword uvm_macros   uvm_do_seq_with
syn keyword uvm_macros   uvm_do_with
syn keyword uvm_macros   uvm_error
syn keyword uvm_macros   uvm_error_context
syn keyword uvm_macros   uvm_fatal
syn keyword uvm_macros   uvm_fatal_context
syn keyword uvm_macros   uvm_field_enum
syn keyword uvm_macros   uvm_field_int
syn keyword uvm_macros   uvm_info
syn keyword uvm_macros   uvm_info_begin
syn keyword uvm_macros   uvm_info_context
syn keyword uvm_macros   uvm_info_end
syn keyword uvm_macros   uvm_message_add_int
syn keyword uvm_macros   uvm_message_add_object
syn keyword uvm_macros   uvm_message_add_string
syn keyword uvm_macros   uvm_message_add_tag
syn keyword uvm_macros   uvm_object_param_utils
syn keyword uvm_macros   uvm_object_utils
syn keyword uvm_macros   uvm_object_utils_begin
syn keyword uvm_macros   uvm_object_utils_end
syn keyword uvm_macros   uvm_rand_send
syn keyword uvm_macros   uvm_rand_send_pri
syn keyword uvm_macros   uvm_rand_send_pri_with
syn keyword uvm_macros   uvm_rand_send_with
syn keyword uvm_macros   uvm_record_int
syn keyword uvm_macros   uvm_record_real
syn keyword uvm_macros   uvm_record_string
syn keyword uvm_macros   uvm_record_time
syn keyword uvm_macros   uvm_send
syn keyword uvm_macros   uvm_send_pri
syn keyword uvm_macros   uvm_sequence_library_utils
syn keyword uvm_macros   uvm_warning
syn keyword uvm_macros   uvm_warning_context

syn match   uvm_method   "::type_id::create"
syn keyword uvm_method   add
syn keyword uvm_method   add_callback
syn keyword uvm_method   add_uvm_phases
syn keyword uvm_method   after_phase
syn keyword uvm_method   b_transport
syn keyword uvm_method   before_phase
syn keyword uvm_method   block
syn keyword uvm_method   body
syn keyword uvm_method   can_get
syn keyword uvm_method   can_peek
syn keyword uvm_method   can_put
syn keyword uvm_method   connect
syn keyword uvm_method   convert2string
syn keyword uvm_method   create
syn keyword uvm_method   default_sequence
syn keyword uvm_method   delete_callback
syn keyword uvm_method   do_compare
syn keyword uvm_method   do_copy
syn keyword uvm_method   do_global_phase
syn keyword uvm_method   do_print
syn keyword uvm_method   drop_objection
syn keyword uvm_method   dump_report_state
syn keyword uvm_method   encode decode
syn keyword uvm_method   end_prematurely
syn keyword uvm_method   find
syn keyword uvm_method   finish_item
syn keyword uvm_method   get
syn keyword uvm_method   get_adjacent_predecessor_nodes
syn keyword uvm_method   get_adjacent_successor_nodes
syn keyword uvm_method   get_child
syn keyword uvm_method   get_children
syn keyword uvm_method   get_common_domain
syn keyword uvm_method   get_depth
syn keyword uvm_method   get_first_child
syn keyword uvm_method   get_full_name
syn keyword uvm_method   get_global_pool
syn keyword uvm_method   get_is_active
syn keyword uvm_method   get_name
syn keyword uvm_method   get_next_child
syn keyword uvm_method   get_next_item
syn keyword uvm_method   get_num_children
syn keyword uvm_method   get_num_waiters
syn keyword uvm_method   get_objection
syn keyword uvm_method   get_parent
syn keyword uvm_method   get_phase_type
syn keyword uvm_method   get_sequence_path
syn keyword uvm_method   get_starting_phase
syn keyword uvm_method   get_trigger_data
syn keyword uvm_method   get_trigger_time
syn keyword uvm_method   get_type_name
syn keyword uvm_method   global_stop_request
syn keyword uvm_method   has_child
syn keyword uvm_method   is_off
syn keyword uvm_method   is_on
syn keyword uvm_method   item_done
syn keyword uvm_method   lookup
syn keyword uvm_method   max_quit_count
syn keyword uvm_method   mid_do
syn keyword uvm_method   nb_transport_bw
syn keyword uvm_method   nb_transport_fw
syn keyword uvm_method   peek
syn keyword uvm_method   post_body
syn keyword uvm_method   post_do
syn keyword uvm_method   post_predict
syn keyword uvm_method   post_read
syn keyword uvm_method   post_start
syn keyword uvm_method   post_write
syn keyword uvm_method   pre_body
syn keyword uvm_method   pre_do
syn keyword uvm_method   pre_predict
syn keyword uvm_method   pre_read
syn keyword uvm_method   pre_start
syn keyword uvm_method   pre_write
syn keyword uvm_method   print
syn keyword uvm_method   print_real
syn keyword uvm_method   print_topology
syn keyword uvm_method   put
syn keyword uvm_method   raise_objection
syn keyword uvm_method   ralgen
syn keyword uvm_method   read_by_name
syn keyword uvm_method   regfile
syn keyword uvm_method   register
syn keyword uvm_method   report_hook
syn keyword uvm_method   report_summarize
syn keyword uvm_method   reset
syn keyword uvm_method   run_test
syn keyword uvm_method   set
syn keyword uvm_method   set_automatic_phase_object
syn keyword uvm_method   set_config
syn keyword uvm_method   set_domain
syn keyword uvm_method   set_drain_time set_timeout
syn keyword uvm_method   set_global_timeout
syn keyword uvm_method   set_id_info
syn keyword uvm_method   set_inst_override_by_type
syn keyword uvm_method   set_jump_phase
syn keyword uvm_method   set_phase_imp
syn keyword uvm_method   set_propagate_mode
syn keyword uvm_method   set_report_default_file
syn keyword uvm_method   set_report_default_file_hier
syn keyword uvm_method   set_report_id_action
syn keyword uvm_method   set_report_id_action_hier
syn keyword uvm_method   set_report_id_file
syn keyword uvm_method   set_report_id_file_hier
syn keyword uvm_method   set_report_max_quit_count
syn keyword uvm_method   set_report_severity_action
syn keyword uvm_method   set_report_severity_action_hier
syn keyword uvm_method   set_report_severity_file
syn keyword uvm_method   set_report_severity_file_hier
syn keyword uvm_method   set_report_severity_id_action
syn keyword uvm_method   set_report_severity_id_action_hier
syn keyword uvm_method   set_report_severity_id_file
syn keyword uvm_method   set_report_severity_id_file_hier
syn keyword uvm_method   set_report_verbosity_level
syn keyword uvm_method   set_report_verbosity_level_hier
syn keyword uvm_method   set_starting_phase
syn keyword uvm_method   set_threshold
syn keyword uvm_method   set_type_override_by_type
syn keyword uvm_method   sprint
syn keyword uvm_method   start_item
syn keyword uvm_method   transform
syn keyword uvm_method   trigger
syn keyword uvm_method   try_get
syn keyword uvm_method   try_next_item
syn keyword uvm_method   try_peek
syn keyword uvm_method   try_put
syn keyword uvm_method   type_id
syn keyword uvm_method   uvm_agent
syn keyword uvm_method   uvm_algorithmic_comparator
syn keyword uvm_method   uvm_analysis_export
syn keyword uvm_method   uvm_analysis_port
syn keyword uvm_method   uvm_bitstream_t
syn keyword uvm_method   uvm_callback
syn keyword uvm_method   uvm_callback_iter
syn keyword uvm_method   uvm_callbacks
syn keyword uvm_method   uvm_callbacks_objection
syn keyword uvm_method   uvm_cmdline_proc
syn keyword uvm_method   uvm_cmdline_processor
syn keyword uvm_method   uvm_component_registry
syn keyword uvm_method   uvm_config_db
syn keyword uvm_method   uvm_default_line_printer
syn keyword uvm_method   uvm_default_printer
syn keyword uvm_method   uvm_default_table_printer
syn keyword uvm_method   uvm_default_tree_printer
syn keyword uvm_method   uvm_event_callback
syn keyword uvm_method   uvm_integral_t
syn keyword uvm_method   uvm_is_match
syn keyword uvm_method   uvm_line_printer
syn keyword uvm_method   uvm_objection_callback
syn keyword uvm_method   uvm_objection_cbs_t
syn keyword uvm_method   uvm_process_report_message
syn keyword uvm_method   uvm_random_stimulus
syn keyword uvm_method   uvm_report_error
syn keyword uvm_method   uvm_report_fatal
syn keyword uvm_method   uvm_report_handler
syn keyword uvm_method   uvm_report_info
syn keyword uvm_method   uvm_report_message
syn keyword uvm_method   uvm_report_object
syn keyword uvm_method   uvm_report_server
syn keyword uvm_method   uvm_coreservice_t
syn keyword uvm_method   uvm_report_warning
syn keyword uvm_method   uvm_resource_db
syn keyword uvm_method   uvm_root
syn keyword uvm_method   uvm_scoreboard
syn keyword uvm_method   uvm_seq_item_export
syn keyword uvm_method   uvm_seq_item_port
syn keyword uvm_method   uvm_seq_item_pull_export
syn keyword uvm_method   uvm_seq_item_pull_port
syn keyword uvm_method   uvm_sequence_base
syn keyword uvm_method   uvm_sequence_item
syn keyword uvm_method   uvm_sequence_library
syn keyword uvm_method   uvm_sequence_library_cfg
syn keyword uvm_method   uvm_sequence_state
syn keyword uvm_method   uvm_sequencer_param_base
syn keyword uvm_method   uvm_subscriber
syn keyword uvm_method   uvm_table_printer
syn keyword uvm_method   uvm_table_printer_knobs
syn keyword uvm_method   uvm_test_done_objection
syn keyword uvm_method   uvm_tlm_if
syn keyword uvm_method   uvm_tlm_time
syn keyword uvm_method   uvm_tree_printer
syn keyword uvm_method   uvm_tree_printer_knobs
syn keyword uvm_method   wait_for
syn keyword uvm_method   wait_off
syn keyword uvm_method   wait_on
syn keyword uvm_method   wait_ptrigger
syn keyword uvm_method   wait_trigger
syn keyword uvm_method   with_phase
syn match   uvm_method   /\<write_\w\+\>/

syn keyword uvm_phase    build_phase
syn keyword uvm_phase    check_phase
syn keyword uvm_phase    configure_phase
syn keyword uvm_phase    connect_phase
syn keyword uvm_phase    define_domain
syn keyword uvm_phase    do_kill
syn keyword uvm_phase    end_of_elaboration_phase
syn keyword uvm_phase    exec_task
syn keyword uvm_phase    extract_phase
syn keyword uvm_phase    final_phase
syn keyword uvm_phase    main_phase
syn keyword uvm_phase    phase_ended
syn keyword uvm_phase    phase_ready_to_end
syn keyword uvm_phase    phase_started
syn keyword uvm_phase    post_configure_phase
syn keyword uvm_phase    post_main_phase
syn keyword uvm_phase    post_reset_phase
syn keyword uvm_phase    post_shutdown_phase
syn keyword uvm_phase    pre_configure_phase
syn keyword uvm_phase    pre_main_phase
syn keyword uvm_phase    pre_reset_phase
syn keyword uvm_phase    pre_shutdown_phase
syn keyword uvm_phase    report_phase
syn keyword uvm_phase    reset_phase
syn keyword uvm_phase    run_phase
syn keyword uvm_phase    shutdown_phase
syn keyword uvm_phase    start_of_simulation_phase

syn keyword uvm_seq      uvm_reg_bit_hash_seq
syn keyword uvm_seq      uvm_reg_hw_reset_seq
syn keyword uvm_seq      uvm_reg_mem_built_in_seq


" Define the default highlighting.
" The default highlighting.
hi def link systemverilogStatement       Statement
hi def link systemverilogTypeDef         TypeDef
hi def link systemverilogConditional     Conditional
hi def link systemverilogRepeat          Repeat
hi def link systemverilogLabel           Label
hi def link systemverilogGlobal          Define
hi def link systemverilogNumber          Number
hi def link systemverilogMethod          Function
hi def link systemverilogStd             Statement
hi def link systemverilogAssertion       Todo

" Highlighting for UVM
hi def link uvm_class                    StorageClass
hi def link uvm_data                     Underlined
hi def link uvm_enum                     Typedef
hi def link uvm_macros                   Macro
hi def link uvm_method                   Function
hi def link uvm_phase                    Special
hi def link uvm_seq                      Special


let b:current_syntax = "systemverilog"

" vim: ts=8
