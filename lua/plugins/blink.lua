return {
	"saghen/blink.cmp",
	event = "InsertEnter",
	dependencies = { "rafamadriz/friendly-snippets", "giuxtaposition/blink-cmp-copilot" },
	version = "1.*",
	opts = {
		keymap = {
			preset = "enter",
			["<C-y>"] = { "select_and_accept" },
		},
		appearance = {
			nerd_font_variant = "mono",
		},
		completion = {
			accept = {
				auto_brackets = {
					enabled = true,
				},
			},
			menu = {
				draw = {
					treesitter = { "lsp" },
				},
			},
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 200,
			},
			ghost_text = {
				enabled = vim.g.ai_cmp,
			},
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer", "copilot" },
			providers = {
				copilot = {
					name = "copilot",
					module = "blink-cmp-copilot",
					score_offset = 100,
					async = true,
				},
			},
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },
		signature = {
			window = {
				winblend = vim.o.pumblend,
			},
		},
	},
	opts_extend = { "sources.default" },
}
