# Configuración de Neovim

Esta es mi configuración de Neovim, construida utilizando la plantilla kickstart.nvim como base ya que esta proporciona un entorno listo para el desarrollo con gestión de plugins, soporte para LSP, autocompletado, snippets y un buen resaltado de sintaxis, todo configurado de manera moderna y eficiente en Lua.

Esta plantilla te proporciona una base funcional con las siguientes configuraciones clave:

- Gestor de plugins: Viene preconfigurado con lazy.nvim, un gestor de plugins potente y rápido escrito en Lua. Esto te permite instalar, actualizar y gestionar fácilmente otros plugins.
Theme: Incluye un tema visual básico pero agradable para empezar. Generalmente, puedes personalizarlo o instalar otros temas fácilmente a través de lazy.nvim.
- LSP (Language Server Protocol): Ya está configurado para admitir LSP. Esto es crucial para características como autocompletado inteligente, detección de errores en tiempo real, ir a la definición, buscar referencias, etc., para los lenguajes que tengas instalados en tu sistema y para los que instales los servidores de lenguaje correspondientes.
- Autocompletado: Incorpora nvim-cmp, un motor de autocompletado que funciona en conjunto con LSP y otros "sources" para ofrecerte sugerencias mientras escribes código.
- Snippets: Trae consigo LuaSnip, un motor para trabajar con fragmentos de código (snippets), lo que te permite insertar estructuras de código comunes de manera rápida.
- Resaltado de sintaxis y navegación: Incluye tree-sitter, un analizador de código que proporciona un resaltado de sintaxis más preciso y te permite navegar por el código de manera más inteligente.
- Keymaps básicos: Define algunos atajos de teclado útiles para tareas comunes como navegar por buffers, moverse entre ventanas y gestionar el autocompletado.
- Configuración en Lua: Toda la configuración está escrita en Lua, el lenguaje recomendado para configurar Neovim debido a su rendimiento y flexibilidad.
