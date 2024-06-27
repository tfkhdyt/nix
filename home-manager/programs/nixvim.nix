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
    {
      action = "<cmd>w<CR>";
      key = "<C-s>";
    }
    {
      action = "<C-w>h";
      key = "<C-h>";
    }
    {
      action = "<C-w>l";
      key = "<C-l>";
    }
    {
      action = "<C-w>j";
      key = "<C-j>";
    }
    {
      action = "<C-w>k";
      key = "<C-k>";
    }
  ];
  opts = {
    cursorline = true;
    shiftwidth = 4;
    tabstop = 4;
  };
  extraConfigLua = ''
    vim.wo.relativenumber = true;
    vim.wo.number = true;
  '';
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
    treesitter = {
      enable = true;
      indent = true;
    };
  };
}
