# Neovim configuration
This is a configuration folder for neovim located in `$HOME/.config/`. It uses packer as its package manager.

## Structure 
```
.
├── init.lua
├── LICENSE
├── lua
│   └── usr
│       ├── cmp.lua
│       ├── colorscheme.lua
│       ├── keymaps.lua
│       ├── lsp
│       │   ├── handlers.lua
│       │   ├── init.lua
│       │   ├── lsp-installer.lua
│       │   └── settings
│       │       ├── jsonls.lua
│       │       ├── pyright.lua
│       │       └── sumneko_lua.lua
│       ├── options.lua
│       ├── plugins.lua
│       ├── telescope.lua
│       └── treesitter.lua
├── plugin
│   └── packer_compiled.lua
└── README.md
```

## License
Code in this repository is licensed under the MIT license see LICENSE for more information

