return {
	settings = {
		["rust-analyzer"] = {
			imports = {
				granularity = {
					group = "module",
				},
				prefix = "self",
			},
			cargo = {
				buildScripts = {
					enable = true,
				},
			},
			procMacro = {
				enable = true,
			},
			-- enable clippy on save
			checkOnSave = {
				command = "clippy",
			},

			-- Disable diagnostics for unresolved proc-macros
			diagnostics = {
				disabled = { "unresolved-proc-macro" },
			},
		},
	},
}
