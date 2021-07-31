# Install Guide 

## Lua 

We are using [Sumneko Lua](https://github.com/sumneko/lua-language-server) for configuring LSP for lua language.

> Installation in Linux

- Clone sumneko/lua-language-server
```bash
cd ~/.cache/nvim
mkdir lspconfig
git clone https://github.com/sumneko/lua-language-server
cd lua-language-server
git submodule update --init --recursive
```

- Build lua-language-server
```bash
cd 3rd/luamake
compile/install.sh
cd ../..
./3rd/luamake/luamake rebuild
```

