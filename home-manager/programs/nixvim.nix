{
  enable = true;
  defaultEditor = true;
  clipboard = {
    register = "unnamedplus";
    providers.wl-copy.enable = true;
  };
  colorschemes.gruvbox.enable = true;
  diagnostics = {
    underline = true;
    virtual_lines = {
      spacing = 4;
      source = "if_many";
      prefix = "●";
    };
    virtual_text = true;
    severity_sort = true;
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
      mode = [
        "n"
        "v"
        "i"
      ];
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
    shiftwidth = 2;
    tabstop = 2;
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
    dashboard = {
      enable = true;
      settings.config = {
        project.enable = true;
        header = [
          ""
          "████████╗███████╗██╗  ██╗██╗  ██╗██████╗ ██╗   ██╗████████╗"
          "╚══██╔══╝██╔════╝██║ ██╔╝██║  ██║██╔══██╗╚██╗ ██╔╝╚══██╔══╝"
          "   ██║   █████╗  █████╔╝ ███████║██║  ██║ ╚████╔╝    ██║   "
          "   ██║   ██╔══╝  ██╔═██╗ ██╔══██║██║  ██║  ╚██╔╝     ██║   "
          "   ██║   ██║     ██║  ██╗██║  ██║██████╔╝   ██║      ██║   "
          "   ╚═╝   ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝    ╚═╝      ╚═╝ 	"
          ""
        ];
      };
    };
    bufferline = {
      enable = true;
      diagnostics = true;
      hover.enabled = true;
      indicator.style = "underline";
    };
    telescope = {
      enable = true;
      keymaps = {
        "<leader><space>" = {
          action = "git_files";
          options = {
            desc = "Telescope Git Files";
          };
        };
        "<leader>/" = "live_grep";
      };
    };
    treesitter-context.enable = true;
    treesitter-refactor.enable = true;
    treesitter-textobjects.enable = true;
    lsp-format.enable = true;
    lsp-lines.enable = true;
  };
}
