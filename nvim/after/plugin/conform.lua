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
    -- This function runs every time you save
    format_on_save = function(bufnr)
        if vim.g.disable_autoformat then
            return
        end
        return { timeout_ms = 500, lsp_fallback = true }
    end,
})

vim.api.nvim_create_user_command("FormatToggle", function()
    vim.g.disable_autoformat = not vim.g.disable_autoformat
    print("Autoformat-on-save: " .. (vim.g.disable_autoformat and "OFF" or "ON"))
end, { desc = "Toggle autoformat on save" })
