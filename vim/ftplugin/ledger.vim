" Use 80 columns to display fold text.
let g:ledger_maxwidth = 80

" Use a · to connect the account name to the amount in fold text.
let g:ledger_fillstring = '·'

" Set default commodity
let g:ledger_default_commodity = '$'

" Align decimal separators at column 50
let g:ledger_align_at = 50

" Mark a transaction as cleared
nnoremap <leader>c :call ledger#transaction_state_toggle(line('.'))<CR>

" Set a transaction's primary date to today
nnoremap <leader>t :call ledger#transaction_date_set(line('.'), 'unshift')<CR>

" Autocomplete and align accounts and commodities with Tab.
inoremap <silent> <buffer> <Tab> <C-r>=ledger#autocomplete_and_align()<CR>
vnoremap <silent> <buffer> <Tab> :LedgerAlign<CR>
