{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    userSettings = {
      terminal.integrated = {
        fontSize = 16;
        gpuAcceleration = "on";
      };
      editor = {
        fontSize = 16;
        minimap = {
          autohide = true;
          renderCharacters = false;
        };
        inlayHints = {
          fontSize = 12;
          padding = true;
        };
        fontLigatures = true;
        wordWrap = "on";
        wrappingIndent = "indent";
        formatOnSave = true;
        tabSize = 2;
        mouseWheelScrollSensitivity = 2;
        cursorSmoothCaretAnimation = "on";
        quickSuggestions.strings = "on";
        codeActionsOnSave.source.fixAll = "always";
        linkedEditing = true;
        fontFamily = "'JetBrainsMono NFP', 'Droid Sans Mono', 'monospace', monospace";
      };
      go = {
        inlayHints = {
          assignVariableTypes = true;
          constantValues = true;
          parameterNames = true;
          rangeVariableTypes = true;
        };
        alternateTools = {
          staticcheck = "/home/tfkhdyt/.nix-profile/bin/staticcheck";
          gopls = "/home/tfkhdyt/.nix-profile/bin/gopls";
        };
        lintOnSave = "off";
      };
      typescript = {
        preferGoToSourceDefinition = true;
        inlayHints = {
          functionLikeReturnTypes.enabled = true;
          parameterNames.enabled = "all";
          parameterTypes.enabled = true;
          propertyDeclarationTypes.enabled = true;
        };
      };
      javascript = {
        preferGoToSourceDefinition = true;
        inlayHints = {
          functionLikeReturnTypes.enabled = true;
          parameterNames.enabled = "all";
          parameterTypes.enabled = true;
          propertyDeclarationTypes.enabled = true;
        };
      };
      eslint = {
        format.enable = true;
        validate = [
          "javascript"
          "typescript"
          "javascriptreact"
          "typescriptreact"
          "astro"
          "svelte"
        ];
      };
      prettier.jsxSingleQuote = true;
      svelte.enable-ts-plugin = true;
      git = {
        openRepositoryInParentFolders = "always";
        confirmSync = false;
        autofetch = true;
      };
      nix.enableLanguageServer = true;
      diffEditor.hideUnchangedRegions.enabled = true;
      "[jsonc]" = {
        editor.defaultFormatter = "vscode.json-language-features";
      };
      "[astro]" = {
        editor.defaultFormatter = "esbenp.prettier-vscode";
      };
      "[typescriptreact]" = {
        editor.defaultFormatter = "esbenp.prettier-vscode";
      };
      "[javascript]" = {
        editor.defaultFormatter = "esbenp.prettier-vscode";
      };
      "[typescript]" = {
        editor.defaultFormatter = "esbenp.prettier-vscode";
      };
      "[svelte]" = {
        editor.defaultFormatter = "svelte.svelte-vscode";
      };
      "[markdown]" = {
        editor.defaultFormatter = "esbenp.prettier-vscode";
      };
      redhat.telemetry.enabled = false;
      search.exclude = {
        "**/bower_components" = true;
        "**/env" = true;
        "**/node_modules" = true;
        "**/pnpm-lock.yaml" = true;
        "**/venv" = true;
      };
      files.watcherExclude = {
        "**/.git/objects/**" = true;
        "**/.git/subtree-cache/**" = true;
        "**/node_modules/**" = true;
        "**/env/**" = true;
        "**/venv/**" = true;
        "env-*" = true;
      };
      workbench = {
        colorTheme = "Gruvbox Dark Hard";
        iconTheme = "material-icon-theme";
        startupEditor = "none";
      };
      errorLens = {
        gutterIconsEnabled = true;
        gutterIconSet = "defaultOutline";
      };
    };
    extensions = with pkgs.vscode-marketplace; [
      jripouteau.adonis-vscode-extension
      astro-build.astro-vscode
      formulahendry.auto-complete-tag
      usernamehw.errorlens
      dbaeumer.vscode-eslint
      waderyan.gitblame
      golang.go
      jdinhlife.gruvbox
      pkief.material-icon-theme
      cardinal90.multi-cursor-case-preserve
      christian-kohler.npm-intellisense
      christian-kohler.path-intellisense
      esbenp.prettier-vscode
      supermaven.supermaven
      svelte.svelte-vscode
      bradlc.vscode-tailwindcss
      meganrogge.template-string-converter
      rangav.vscode-thunder-client
      wakatime.vscode-wakatime
      redhat.vscode-yaml
      tamasfe.even-better-toml
      moalamri.inline-fold
      yzhang.markdown-all-in-one
      yoavbls.pretty-ts-errors
      ttoowa.in-your-face-incredible
    ];
  };
}
