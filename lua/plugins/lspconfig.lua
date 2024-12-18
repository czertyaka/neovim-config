return {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require("lspconfig")
        lspconfig.clangd.setup {}
        lspconfig.anakin_language_server.setup {}
        lspconfig.hls.setup {}
    end
}
