{
  enable = true;
  defaultEditor = true;
  clipboard = {
    register = "unnamedplus";
    providers.wl-copy.enable = true;
  };
  colorschemes.gruvbox.enable = true;
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
      key = "<leader>cr";
      action = "<cmd>lua vim.lsp.buf.rename()<CR>";
    }
    {
      key = "<leader>xx";
      action = "<cmd>Telescope diagnostics<cr>";
    }
    {
      key = "gd";
      action = "<cmd>Telescope lsp_definitions<CR>";
    }
    {
      key = "gD";
      action = "<cmd>lua vim.lsp.buf.declaration()<CR>";
    }
    {
      key = "gi";
      action = "<cmd>Telescope lsp_implementations<CR>";
    }
    {
      key = "gr";
      action = "<cmd>Telescope lsp_references<CR>";
    }
    {
      key = "gt";
      action = "<cmd>Telescope lsp_type_definitions<CR>";
    }
    {
      key = "<leader>ss";
      action = "<cmd>Telescope lsp_document_symbols<CR>";
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
      autoReloadOnWrite = false;
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
        header = [
          ""
          "████████╗███████╗██╗  ██╗██╗  ██╗██████╗ ██╗   ██╗████████╗"
          "╚══██╔══╝██╔════╝██║ ██╔╝██║  ██║██╔══██╗╚██╗ ██╔╝╚══██╔══╝"
          "   ██║   █████╗  █████╔╝ ███████║██║  ██║ ╚████╔╝    ██║   "
          "   ██║   ██╔══╝  ██╔═██╗ ██╔══██║██║  ██║  ╚██╔╝     ██║   "
          "   ██║   ██║     ██║  ██╗██║  ██║██████╔╝   ██║      ██║   "
          "   ╚═╝   ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝    ╚═╝      ╚═╝   "
          ""
        ];
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
      currentLine = false;
    };
    lspkind.enable = true;
    cmp = {
      enable = true;
      settings = {
        sources = [
          { name = "nvim_lsp"; }
          # { name = "luasnip"; }
          { name = "path"; }
          { name = "buffer"; }
          { name = "nvim_lsp_signature_help"; }
        ];
        mapping = {
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-e>" = "cmp.mapping.close()";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<CR>" = "cmp.config.disable";
          "<Up>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
          "<Down>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<Tab>" = "cmp.mapping.confirm({ select = true })";
        };
      };
    };
    cmp-nvim-lsp.enable = true;
    cmp-buffer.enable = true;
    cmp-path.enable = true;
    cmp-nvim-lsp-signature-help.enable = true;
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
    leap = {
      enable = true;
      addDefaultMappings = true;
    };
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
