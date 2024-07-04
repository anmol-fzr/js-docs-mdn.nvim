# js-docs-mdn.nvim

Quickly open JS Docs with the help of [mozilla](https://developer.mozilla.org/en-US/docs/Web/HTTP), including [telescope](https://github.com/barrett-ruth/telescope-http.nvim/) and [fzf-lua](https://github.com/ibhagwan/fzf-lua) integrations.

<img src="https://github.com/anmol-fzr/js-docs-mdn.nvim/blob/main/js-docs-mdn.png" >
<img src="https://github.com/anmol-fzr/js-docs-mdn.nvim/blob/main/js-docs-mdn_search.png" >

## Installation

Install via your favorite package manager, like [lazy](https://github.com/folke/lazy.nvim):

```lua
require('lazy').setup({
    {
        'anmol-fzr/js-docs-mdn.nvim'
        config = true,
        -- or 'nvim-telescope/telescope.nvim'
        dependencies = 'ibhagwan/fzf-lua'
        keys = { { '<leader>J', '<cmd>JSDocs<cr>' }}
    }
})
```

## [Configuration](./doc/js-docs-mdn.txt)

`js-docs-mdn.nvim` uses telescope or fzf-lua (whichever you've installed), which can be manually overidden.

`js-docs-mdn.nvim` opens the Mozilla documentation URLs based on your operating system. This can be overidden.

| OS      | open_url      |
| ------- | ------------- |
| Windows | `start %s`    |
| OSX     | `open %s`     |
| UNIX    | `xdg-open %s` |

See [the docs](./doc/js-docs-mdn.txt) for more information.

## Usage

Use the exposed command in vimscript:

```lua
:JSDocs
```

or in lua:

```lua
require('js-docs-mdn').js_docs_mdn()
```

## Migration

If migrating from [telescope-http.nvim](https://github.com/barrett-ruth/telescope-http.nvim), follow the above instructions&mdash;no telescope-specific config is necessary.
