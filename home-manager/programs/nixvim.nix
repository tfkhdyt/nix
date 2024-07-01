{ pkgs, ... }:
{
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    clipboard = {
      register = "unnamedplus";
      providers.wl-copy.enable = true;
    };
    diagnostics = {
      underline = true;
      update_in_insert = false;
    };
    extraConfigLuaPost = ''
      vim.fn.sign_define('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError' })
      vim.fn.sign_define('DiagnosticSignWarn', { text = '', texthl = 'DiagnosticSignWarn' })
      vim.fn.sign_define('DiagnosticSignInfo', { text = '', texthl = 'DiagnosticSignInfo' })
      vim.fn.sign_define('DiagnosticSignHint', { text = '', texthl = 'DiagnosticSignHint' })

      vim.lsp.handlers['textDocument/hover'] = function(_, result, ctx, config)
        config = config or {}
        config.focus_id = ctx.method
        if not (result and result.contents) then
          return
        end
        local markdown_lines = vim.lsp.util.convert_input_to_markdown_lines(result.contents)
        markdown_lines = vim.lsp.util.trim_empty_lines(markdown_lines)
        if vim.tbl_isempty(markdown_lines) then
          return
        end
        return vim.lsp.util.open_floating_preview(markdown_lines, 'markdown', config)
      end
    '';
    colorschemes.gruvbox.enable = true;
    globals.mapleader = " ";
    extraPlugins = with pkgs; [
      vimPlugins.vim-move
      vimPlugins.nvim-snippets
    ];
    keymaps = [
      {
        action = "<cmd>NvimTreeToggle<CR>";
        key = "<Leader>e";
        options = {
          silent = true;
        };
      }
      {
        action = "<cmd>w<CR><esc>";
        key = "<C-s>";
        mode = [
          "n"
          "x"
          "i"
          "s"
        ];
      }
      {
        key = "<";
        action = "<gv";
        mode = [ "v" ];
      }
      {
        key = ">";
        action = ">gv";
        mode = [ "v" ];
      }
      {
        action = "<C-w>q";
        key = "<C-q>";
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
        action = "<Cmd>lua MiniBufremove.delete()<CR>";
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
        key = "<leader>cf";
        action = "<cmd>lua require('conform').format({ timeout_ms = 3000, lsp_format = 'fallback' })<CR>";
      }
      {
        key = "<leader>xx";
        action = "<cmd>Trouble diagnostics toggle<cr>";
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
      {
        key = "s";
        action = "<cmd>lua require('flash').jump()<cr>";
        mode = [
          "n"
          "x"
          "o"
        ];
      }
      {
        key = "zR";
        action = "<cmd>lua require('ufo').openAllFolds()<CR>";
      }
      {
        key = "zM";
        action = "<cmd>lua require('ufo').closeAllFolds()<CR>";
      }
      {
        key = "<leader>gg";
        action = "<cmd>LazyGit<CR>";
      }
    ];
    opts = {
      cursorline = true;
      shiftwidth = 2;
      tabstop = 2;
      relativenumber = true;
      number = true;
      foldcolumn = "0";
      foldlevel = 99;
      foldlevelstart = 99;
      foldenable = true;
      breakindent = true;
      breakindentopt = "shift:2";
    };
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
        updateFocusedFile.enable = true;
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
          marksman.enable = true;
          astro.enable = true;
          cssls.enable = true;
          html.enable = true;
          svelte.enable = true;
          tailwindcss.enable = true;
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
        showBufferCloseIcons = false;
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
      lspkind.enable = true;
      cmp = {
        enable = true;
        settings = {
          sources = [
            { name = "nvim_lsp"; }
            { name = "path"; }
            { name = "nvim_lsp_signature_help"; }
            # { name = "codeium"; }
            { name = "buffer"; }
            { name = "snippets"; }
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
        formatOnSave = {
          lspFallback = true;
          timeoutMs = 3000;
        };
        formattersByFt = {
          javascript = [ "prettierd" ];
          typescript = [ "prettierd" ];
          javascriptreact = [ "prettierd" ];
          typescriptreact = [ "prettierd" ];
          astro = [ "prettierd" ];
          nix = [ "nixfmt" ];
          go = [
            "gofumpt"
            "goimports-reviser"
            "golines"
          ];
          markdown = [ "mdformat" ];
          "_" = [ "trim_whitespace" ];
        };
      };
      nvim-autopairs.enable = true;
      trouble = {
        enable = true;
        settings.auto_close = true;
      };
      ts-autotag.enable = true;
      wakatime.enable = true;
      flash.enable = true;
      twilight.enable = true;
      indent-blankline = {
        enable = true;
        settings = {
          indent = {
            char = "│";
            tab_char = "│";
          };
          scope = {
            enabled = true;
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
      codeium-nvim.enable = false;
      lastplace.enable = true;
      dressing.enable = true;
      nix.enable = true;
      nvim-ufo.enable = true;
      mini = {
        enable = true;
        modules = {
          bufremove = { };
        };
      };
      lazygit.enable = true;
    };
  };
}
