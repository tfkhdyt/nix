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
    {
      action = "<cmd>noh<CR>";
      key = "<Esc>";
    }
    {
      action = "<cmd>BufferLineCyclePrev<cr>";
      key = "<S-h>";
    }
    {
      action = "<cmd>BufferLineCycleNext<cr>";
      key = "<S-l>";
    }
    {
      key = "<leader>bo";
      action = "<Cmd>BufferLineCloseOthers<CR>";
    }
    {
      key = "<leader>br";
      action = "<Cmd>BufferLineCloseRight<CR>";
    }
    {
      key = "<leader>bl";
      action = "<Cmd>BufferLineCloseLeft<CR>";
    }
    {
      key = "<leader>bd";
      action = "<Cmd>bd<CR>";
    }
    {
      key = "<leader>|";
      action = "<C-w>v";
    }
    {
      key = "<leader>-";
      action = "<C-w>s";
    }
    {
      key = "<leader>ca";
      action = "<cmd>lua vim.lsp.buf.code_action()<CR>";
    }
    {
      key = "<leader>xx";
      action = "<cmd>Trouble diagnostics toggle<cr>";
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
      };
    };
    bufferline = {
      enable = true;
      diagnostics = true;
      hover = {
        enabled = true;
        reveal = [ "close" ];
      };
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
    lsp-lines = {
      enable = true;
      currentLine = true;
    };
    lspkind.enable = true;
    cmp = {
      enable = true;
      settings = {
        mapping = {
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-e>" = "cmp.mapping.close()";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<CR>" = "cmp.config.disable";
          # "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
          # "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<Tab>" = "cmp.mapping.confirm({ select = true })";
        };
      };
    };
    cmp-nvim-lsp.enable = true;
    cmp-buffer.enable = true;
    cmp-path.enable = true;
    cmp-cmdline.enable = true;
    conform-nvim = {
      enable = true;
      formatAfterSave = ''
        function()
        	return {
        		lsp_fallback = true
        	}
        end
      '';
      # {
      #      lspFallback = true;
      #    };
      formattersByFt = {
        javascript = [ "prettierd" ];
        typescript = [ "prettierd" ];
        javascriptreact = [ "prettierd" ];
        typescriptreact = [ "prettierd" ];
        nix = [ "nixfmt" ];
        go = [
          "gofumpt"
          "goimports-reviser"
          "golines"
        ];
        "_" = [ "trim_whitespace" ];
      };
    };
    nvim-autopairs.enable = true;
    trouble.enable = true;
    ts-autotag.enable = true;
    wakatime.enable = true;
    leap.enable = true;
    indent-blankline = {
      enable = true;
      settings = {
        indent = {
          char = "│";
          tab_char = "│";
        };
        scope = {
          show_start = false;
          show_end = false;
        };
        exclude.filetypes = [
          "help"
          "alpha"
          "dashboard"
          "nvim-tree"
          "Trouble"
          "trouble"
          "lazy"
          "mason"
          "notify"
          "toggleterm"
          "lazyterm"
        ];
      };
    };
  };
}
