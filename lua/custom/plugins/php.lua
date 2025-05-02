local lspconfig = require("lspconfig")
local conform = require("conform")

-- Configuración de intelephense
lspconfig.intelephense.setup({
	--  The root_dir property tells the client where the root directory of the
	--  workspace is. By default, this is the directory where the current
	--  file is located. You can also manually set it by providing a
	--  function that returns the root directory.
	root_dir = function(workspace_uri)
		--  You can add custom logic here to determine the root directory.
		--  For example, you might want to look for a composer.json file.
		return lspconfig.util.find_git_ancestor(workspace_uri) or workspace_uri
	end,
	--  `initializationOptions` can be used to pass options to the server.
	--  For intelephense, you can configure things like:
	--  - 'globalStoragePath'
	--  - 'storagePath'
	--  - 'licenceKey'
	--  - 'indexImportedSymbols'
	--  - 'excludeSymbols'
	--  - 'completion.maxItems'
	--  - 'completion.insertUseDeclaration'
	--  - 'telemetry.enabled'
	initializationOptions = {
		--  For example, to increase the maximum completion items:
		completion = { maxItems = 2000 },
	},
})

-- Configuración de conform.nvim para PHP
conform.setup({
	formatters_by_ft = {
		php = {
			-- Add a fallback formatter if pint is not available
			"phpfmt",
			stop_after_first = true,
			lsp_format = "fallback",
			command = "pint",
			condition = function(self, ctx)
				return vim.fs.basename(ctx.filename) ~= "pint.json"
			end,
		},
	},
	format_on_save = {
		lsp_format = "never", -- Disable LSP formatting
		async = true,
		timeout_ms = 500,
		-- Add a condition to format only if the file is not empty
		condition = function(bufnr)
			return vim.fn.getfsize(vim.api.nvim_buf_get_name(bufnr)) > 0
		end,
	},
	notify_on_error = false,
})

-- Siempre debe retornar una tabla, aunque esta este vacía
return {}
