" Jinja(2)
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufRead,BufNewFile *.j2     setfiletype jinja
  au! BufRead,BufNewFile *.jinja      setfiletype jinja
augroup END
