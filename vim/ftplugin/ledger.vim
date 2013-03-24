" Use 80 columns to display fold text.
let g:ledger_maxwidth = 80

" Use a · to connect the account name to the amount in fold text.
let g:ledger_fillstring = '·'

" Mark a transaction as cleared
nnoremap <leader>c :call LedgerSetTransactionState(line('.'), '*')<CR>
