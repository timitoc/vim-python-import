func! ChangeAs(token)
    let words = split(a:token, ":")
    if len(words) > 1
        return words[0]." as ".words[1]
    endif
    return words[0]
endfunc!

func! Import()
    let current_line = getline('.')
    let tokens = split(current_line, "/")
    let module = tokens[0]
    if len(tokens) > 1
        let to_import = split(tokens[1], ",")
        call map(to_import, 'ChangeAs(v:val)')
        let result = "from ".module." import ".join(to_import, ", ")
        call setline('.', result)
    else
        let changed = ChangeAs(module)
        let result = "import ".changed
        call setline('.', result)
    endif
endfunc!

au filetype python nmap <leader>i :call Import()<CR>_
