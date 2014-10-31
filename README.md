# casl2.vim

This casl2.vim plugin adds syntax highlighting for CASL-II to Vim.
CASL-II is an assembly language for COMET-II virtual machine.
COMET-II is created only for Information Technology Engineer Examination sponsored by Information-technology Promotion Agency.

## Installation

### Manual (not recommended)

1. Put files to your Vim directory (Usually `~/.vim` ).

2. Configure Vim to identify casl2 source files correctly.

    Sample `.vimrc` snippet:

    ```
    autocmd BufRead,BufNewFile *.cas set filetype=casl2
    ```

### NeoBundle

1. Setup the neobundle package manager

2. Set the bundles.

    ```
    NeoBundle 'glabra/casl2.vim'
    ```

3. Execute Vim and start installation with `:NeoBundleInstall`.

4. Configure Vim to identify casl2 source files correctly.

    Sample `.vimrc` snippet:

    ```
    autocmd BufRead,BufNewFile *.cas set filetype=casl2
    ```

## License

Yes, MIT License.

