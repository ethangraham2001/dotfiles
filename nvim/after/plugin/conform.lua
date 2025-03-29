require("conform").setup({
    formatters_by_ft = {
        c = { "clang_format" },
        cpp = { "clang_format" },
        rust = { "rustfmt" },
    },
    format_on_save = true,
})
