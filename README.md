# vim-rust

Colection of Vim and Neovim configurations to kickstart your
Rust development experience.

All vim configurations should work under neovim. Neovim configurations will
not work under vim.

Blog post: https://sharksforarms.dev/posts/neovim-rust/

# Examples

Each example provides `Prerequisites` and `Steps` as comments at the top of
each file.


In order of recommendation,


| Example         | Description                                                   | Stability          | Syntax             | Navigation         | Autocompletion     | Inlay Hints        | Diagnostics        |
|-----------------|---------------------------------------------------------------|--------------------|--------------------|--------------------|--------------------|--------------------|--------------------|
| [neovim-init-lsp-compe-rust-tools] | Neovim configuration using built-in LSP [compe.nvim] and [rust-tools.nvim] | :construction:     | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| [neovim-init-lsp-compe] | Neovim configuration using built-in LSP [compe.nvim] | :construction:     | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| [neovim-init-lsp] | Neovim configuration using built-in LSP and [completion.nvim] | :construction:     | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| [vim-vimrc-coc]   | Autocompletion with [Conquer of Completion]                     | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :x:                | :heavy_check_mark: |
| [vim-vimrc]       | Simple vim configuration                                      | :heavy_check_mark: | :heavy_check_mark: | :x:                | :x:                | :x:                | :heavy_check_mark: |

# Try for yourself!

Each example can be tested with the provided Dockerfile!

See the `run.sh` script for details. This will start a docker instance and run `PlugInstall`.

For example, `./run.sh ./neovim-init-lsp-compe-rust-tools.vim` to test this configuration.

Once in the container, navigate to `~/test_app` to try it on some rust code.

[neovim-init-lsp-compe-rust-tools]: ./neovim-init-lsp-compe-rust-tools.vim
[neovim-init-lsp-compe]: ./neovim-init-lsp-compe.vim
[neovim-init-lsp]: ./neovim-init-lsp.vim
[vim-vimrc-coc]: ./vim-vimrc-coc.vim
[vim-vimrc]: ./vim-vimrc.vim
[rust-tools.nvim]: https://github.com/simrat39/rust-tools.nvim
[compe.nvim]: https://github.com/hrsh7th/nvim-compe
[completion.nvim]: https://github.com/nvim-lua/completion-nvim
[Conquer of Completion]: https://github.com/neoclide/coc.nvim
