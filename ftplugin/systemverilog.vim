" Vim filetype plugin file
" Language:    SystemVerilog
" Maintainer:  kocha <kocha.lsifrontend@gmail.com>
" Last Change: 07-May-2021

if exists("b:did_ftplugin")
  finish
endif

" Behaves just like Verilog
runtime! ftplugin/verilog.vim

let s:cpo_save = &cpo
set cpo&vim

" Add SystemVerilog keywords for matchit plugin.
if exists("loaded_matchit")
  let b:match_words =
    \ '\<begin\>:\<end\>,' .
    \ '\<case\>\|\<casex\>\|\<casez\>:\<endcase\>,' .
    \ '\<module\>:\<endmodule\>,' .
    \ '\<if\>:`\@<!\<else\>,' .
    \ '\<function\>:\<endfunction\>,' .
    \ '`ifn\?def\>:`elsif\>:`else\>:`endif\>,' .
    \ '\<task\>:\<endtask\>,' .
    \ '\<specify\>:\<endspecify\>,' .
    \ '\<config\>:\<endconfig\>,' .
    \ '\<generate\>:\<endgenerate\>,' .
    \ '\<fork\>:\<join\>\|\<join_any\>\|\<join_none\>,' .
    \ '\<primitive\>:\<endprimitive\>,' .
    \ '\<table\>:\<endtable\>,' .
    \ '\<checker\>:\<endchecker\>,' .
    \ '\<class\>:\<endclass\>,' .
    \ '\<clocking\>:\<endclocking\>,' .
    \ '\<group\>:\<endgroup\>,' .
    \ '\<interface\>:\<endinterface\>,' .
    \ '\<package\>:\<endpackage\>,' .
    \ '\<program\>:\<endprogram\>,' .
    \ '\<property\>:\<endproperty\>,' .
    \ '\<sequence\>:\<endsequence\>'
endif

" Set Dictionary For UVM
setlocal dictionary=~/.vim/dict/uvm.dict

" Enable Syntax Completion (Also Include Verilog Keywords)
let g:omni_syntax_group_include_systemverilog = 'systemverilog\w\+,verilog\w\+'
setlocal omnifunc=syntaxcomplete#Complete

let &cpo = s:cpo_save
unlet s:cpo_save
