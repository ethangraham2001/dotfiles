require("conform").setup({
    formatters_by_ft = {
        c = { "clang_format" },
        cpp = { "clang_format" },
        cuda = { "clang_format" },
        rust = { "rustfmt" },
        terraform = { "terraform_fmt" },
        ocaml = { "ocamlformat" },
        go = { "gofmt" },
        python = { "black" },
    },
    format_on_save = true,
})
