# vim-goalternate

`:GoAlternate` command

## Usage

```
:GoAlternate
```

## Installation

For [vim-plug](https://github.com/junegunn/vim-plug) plugin manager:

```viml
Plug 'nasjp/vim-goalternate'
```

## To customize

```
autocmd Filetype go command! -bang A call s:goalternate#exec(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call s:goalternate#exec(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call s:goalternate#exec(<bang>0, 'split')
autocmd Filetype go command! -bang AT call s:goalternate#exec(<bang>0, 'tabe')
```

## License

MIT

## Author

nasjp
