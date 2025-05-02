local lspconfig = require("lspconfig")

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

-- Siempre debe retornar una tabla, aunque esta este vacía
return {}
