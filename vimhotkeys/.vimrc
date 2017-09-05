

" Qilquiri: Hotkeys to insert Java templates

let systemOutPrintln="System.out.println(\"\");"
let method="public ( ){\n
   \\n
   	\}"

imap <silent> <C-D><C-D> <C-R>=systemOutPrintln<CR>
imap <silent> <C-T><C-T> <C-R>=method<CR>

