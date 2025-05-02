# Configuración de Neovim

Esta es mi configuración de Neovim, construida utilizando la plantilla kickstart.nvim como base ya que esta proporciona un entorno listo para el desarrollo con gestión de plugins, soporte para LSP, autocompletado, snippets y un buen resaltado de sintaxis, todo configurado de manera moderna y eficiente en Lua.

## Resumen de la configuración inicial

- Configuración básica de Neovim: Incluye opciones para la numeración de líneas, el comportamiento del ratón, el portapapeles, el sangrado, la búsqueda, la columna de signos, el tiempo de actualización, los splits, los caracteres de espacio en blanco y el cursor.
- Keymaps básicos: Define algunos atajos de teclado útiles, como limpiar los resaltados de búsqueda con <Esc>, navegar entre ventanas con <C-h>, <C-j>, <C-k>, <C-l>, y algunos otros.
- Autocommands básicos: Configura un autocomando para resaltar el texto al copiarlo (TextYankPost).
- Gestor de plugins (lazy.nvim): Instala y configura lazy.nvim, que es el gestor de plugins que utilizarás para añadir funcionalidades a Neovim.
- Plugins preconfigurados: Ya incluye algunos plugins esenciales como:
    - tpope/vim-sleuth: Para la detección automática de tabulación y sangría.
    - lewis6991/gitsigns.nvim: Para la integración de Git en el gutter.
    - folke/which-key.nvim: Para mostrar los keymaps disponibles.
    - nvim-telescope/telescope.nvim: Un buscador difuso para archivos, buffers, etc.
    - folke/lazydev.nvim: Para mejorar la experiencia de desarrollo en Lua.
    - neovim/nvim-lspconfig: Para la configuración del Language Server Protocol (LSP).
    - stevearc/conform.nvim: Para el formateo automático de código.
    - saghen/blink.cmp: Para el autocompletado.
    - folke/tokyonight.nvim: Un tema de color.
    - folke/todo-comments.nvim: Para resaltar los comentarios TODO, NOTE, etc.
    - echasnovski/mini.nvim: Una colección de plugins pequeños y útiles.
    - nvim-treesitter/nvim-treesitter: Para el resaltado de sintaxis y la navegación por el código.
- Configuración LSP: Configura el LSP con nvim-lspconfig, incluyendo la instalación de servidores de lenguaje con mason.nvim y mason-lspconfig.nvim, y define keymaps y autocommands para las funcionalidades del LSP.
