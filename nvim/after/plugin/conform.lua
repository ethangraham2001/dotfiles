require("conform").setup({
    formatters_by_ft = {
        c = { "clang_format" },
        cpp = { "clang_format" },
        rust = { "rustfmt" },
        terraform = { "terraform_fmt" },
        ocaml = { "ocamlformat" },
    },
    format_on_save = true,
})
