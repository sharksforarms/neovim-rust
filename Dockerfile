FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

USER root
ENV USER=root

# Install vim and neovim
RUN apt-get update \
    # Install common deps
    && apt-get install -y curl git exuberant-ctags software-properties-common gnupg \
    # Install rust-analyzer
    && curl -L -o rust-analyzer-x86_64-unknown-linux-gnu.gz https://github.com/rust-analyzer/rust-analyzer/releases/download/nightly/rust-analyzer-x86_64-unknown-linux-gnu.gz \
    && gzip -d rust-analyzer-x86_64-unknown-linux-gnu.gz \
    && mkdir -p ~/.local/bin \
    && mv rust-analyzer-x86_64-unknown-linux-gnu ~/.local/bin/rust-analyzer \
    && chmod +x ~/.local/bin/rust-analyzer \
    # Node required for vim-vimrc-coc example
    && curl -sL https://deb.nodesource.com/setup_14.x  | bash - \
    && apt-get install nodejs \
    # Setup latest vim with vim-plug
    && apt-get install -y vim \
    && curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
    # Setup latest neovim with vim-plug
    && add-apt-repository -y ppa:neovim-ppa/unstable \
    && apt-get install -y neovim \
    && sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' \
    && mkdir -p ~/.config/nvim/ \
    && apt-get clean

# Install Rust
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y
ENV PATH="/root/.local/bin:/root/.cargo/bin:${PATH}"

RUN cd ~/ && cargo new test_app

CMD ["/bin/bash"]
