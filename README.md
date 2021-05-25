# vim-rust

Colection of Vim and Neovim configurations to kickstart your
Rust development experience.

All vim configurations should work under neovim. Neovim configurations will
not work under vim.

Blog post: https://sharksforarms.dev/posts/neovim-rust/

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

See the `run.sh` script for details. This will start a docker instance and run `PlugInstall`.

For example, `./run.sh ./neovim-init-lsp-compe.vim` to test this configuration.

There is a rust project setup in `~/test_app`

