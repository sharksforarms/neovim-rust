# vim-rust

Colection of Vim and Neovim configurations to kickstart your
Rust development experience.

All vim configurations should work under neovim. Neovim configurations will
not work under vim.

# Examples

Each example provides `Prerequisites` and `Steps` as comments at the top of
each file.


| Example         | Description                                                   | Stability          | Syntax             | Navigation         | Autocompletion     | Inlay Hints        | Diagnostics        |
|-----------------|---------------------------------------------------------------|--------------------|--------------------|--------------------|--------------------|--------------------|--------------------|
| neovim-init-lsp | Neovim configuration using latest built-in LSP and extentions | :construction:     | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| vim-vimrc       | Simple vim configuration                                      | :heavy_check_mark: | :heavy_check_mark: | :x:                | :x:                | :x:                | :heavy_check_mark: |
| vim-vimrc-coc   | Autocompletion with Conquer of Completion                     | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :x:                | :heavy_check_mark: |

# Try for yourself!

Each example can be tested with the provided Dockerfile!

1. Build the container: `docker build -t testvim .`
2. Mount the config and run
    - vim: `docker run -v "$PWD/<example.vim>:/root/.vimrc" -it testvim /bin/bash`
    - nvim: `docker run -v "$PWD/<example.vim>:/root/.config/nvim/init.vim" -it testvim /bin/bash`
3. Open `vim` or `nvim` and run `:PlugInstall`
4. Open a Rust file, `cd ~/test_app`, `[n]vim src/main.rs`
5. Modify configuration, test, repeat!

