{
  enable = true;
  defaultEditor = true;
  clipboard.providers.wl-copy.enable = true;
  colorschemes.gruvbox.enable = true;
  plugins = {
    lualine = {
      enable = true;
      globalstatus = true;
      iconsEnabled = true;
    };
    nvim-tree = {
      enable = true;
      autoReloadOnWrite = true;
      disableNetrw = true;
      hijackCursor = true;
    };
    surround.enable = true;
    lsp = {
      servers = {
        gopls.enable = true;
        nil-ls.enable = true;
        tsserver.enable = true;
        emmet-ls.enable = true;
        eslint.enable = true;
        jsonls.enable = true;
      };
    };
  };
}
