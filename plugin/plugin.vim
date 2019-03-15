func! Import()
    let current_line = getline('.')
    let tokens = split(current_line, "/")
    let module = tokens[0]
    if len(tokens) > 1
        let to_import = split(tokens[1], ",")
        let result = "from ".module." import ".join(to_import, ", ")
        call setline('.', result)
    else
        let result = "import ".module
        call setline('.', result)
    endif
endfunc!

nmap <leader>i :call Import()<CR>_
