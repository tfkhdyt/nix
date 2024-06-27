{
  enable = true;
  defaultEditor = true;
  clipboard.providers.wl-copy.enable = true;
  colorschemes.gruvbox.enable = true;
  diagnostics = {
    virtual_lines = {
      only_current_line = true;
    };
    virtual_text = true;
  };
  globals = {
    mapleader = " ";
  };
  keymaps = [
     {
      action = "<cmd>NvimTreeToggle<CR>";
      key = "<Leader>e";
      options = {
        silent = true;
      };
    }
  ];
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
      diagnostics.enable = true;
      filesystemWatchers.enable = true;
      git.enable = true;
    };
    surround.enable = true;
    lsp = {
      enable = true;
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
