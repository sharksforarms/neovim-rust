# neovim-rust

Collection of Neovim and Vim configurations to kickstart your
Rust development experience.

# Examples

Each example provides `Prerequisites` and `Steps` as comments at the top of
each file.

The only maintained file is `neovim-init-lsp-cmp-rust-tools.lua`, other examples are in `./unmaintained/`

# Try for yourself!

Each example can be tested with the provided Dockerfile! This allows you to
test a configuration without changing your system. The Dockerfile
provides all the dependencies required to run each setup.

See the `run.sh` script for details. This will start a docker instance and run `PlugInstall`.

For example, `./run.sh ./neovim-init-lsp-cmp-rust-tools.lua` to test this configuration.

Once in the container, navigate to `~/test_app` to try the configuration on some rust code.
