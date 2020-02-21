if has('nvim')
    nnoremap <leader>ll :call jobstart(['markdownmk', expand('%')])<CR>
endif
set colorcolumn&
set textwidth&
set spelllang=en_us,de_de
set spell
autocmd FileType markdown UltiSnipsAddFiletypes tex
