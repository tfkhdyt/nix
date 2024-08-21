{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    userSettings = {
      "terminal.integrated.fontSize" = 16;
      "terminal.integrated.gpuAcceleration" = "on";
      "editor.fontSize" = 16;
      "editor.minimap.autohide" = true;
      "editor.minimap.renderCharacters" = false;
      "editor.inlayHints.fontSize" = 12;
      "editor.inlayHints.padding" = true;
      "editor.fontLigatures" = true;
      "editor.wordWrap" = "on";
      "editor.wrappingIndent" = "indent";
      "editor.formatOnSave" = true;
      "editor.tabSize" = 2;
      "editor.mouseWheelScrollSensitivity" = 2;
      "editor.cursorSmoothCaretAnimation" = "on";
      "editor.quickSuggestions" = {
        "strings" = "on";
      };
      "editor.linkedEditing" = true;
      "editor.fontFamily" = "'JetBrainsMono NFP', 'Droid Sans Mono', 'monospace', monospace";
      "editor.codeActionsOnSave" = {
        "source.fixAll" = "always";
        "source.organizeImports" = "always";
      };
      "go.inlayHints.assignVariableTypes" = true;
      "go.inlayHints.constantValues" = true;
      "go.inlayHints.parameterNames" = true;
      "go.inlayHints.rangeVariableTypes" = true;
      "go.alternateTools" = {
        "gofumpt" = "/home/tfkhdyt/.nix-profile/bin/gofumpt";
        "golangci-lint" = "/home/tfkhdyt/.nix-profile/bin/golangci-lint";
        "gomodifytags" = "/home/tfkhdyt/.nix-profile/bin/gomodifytags";
        "gopls" = "/home/tfkhdyt/.nix-profile/bin/gopls";
        "impl" = "/home/tfkhdyt/.nix-profile/bin/impl";
        "staticcheck" = "/home/tfkhdyt/.nix-profile/bin/staticcheck";
      };
      "go.lintTool" = "golangci-lint";
      "go.formatTool" = "gofumpt";
      "typescript.preferGoToSourceDefinition" = true;
      "typescript.inlayHints.functionLikeReturnTypes.enabled" = true;
      "typescript.inlayHints.parameterNames.enabled" = "all";
      "typescript.inlayHints.parameterTypes.enabled" = true;
      "typescript.inlayHints.propertyDeclarationTypes.enabled" = true;
      "javascript.preferGoToSourceDefinition" = true;
      "javascript.inlayHints.functionLikeReturnTypes.enabled" = true;
      "javascript.inlayHints.parameterNames.enabled" = "all";
      "javascript.inlayHints.parameterTypes.enabled" = true;
      "javascript.inlayHints.propertyDeclarationTypes.enabled" = true;
      "eslint.format.enable" = true;
      "eslint.validate" = [
        "javascript"
        "typescript"
        "javascriptreact"
        "typescriptreact"
        "astro"
        "svelte"
      ];
      "prettier.jsxSingleQuote" = true;
      "svelte.enable-ts-plugin" = true;
      "git.openRepositoryInParentFolders" = "always";
      "git.confirmSync" = false;
      "git.autofetch" = true;
      "diffEditor.hideUnchangedRegions.enabled" = true;
      "[jsonc]" = {
        "editor.defaultFormatter" = "vscode.json-language-features";
      };
      "[astro]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      "[typescriptreact]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      "[javascript]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      "[typescript]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      "[svelte]" = {
        "editor.defaultFormatter" = "svelte.svelte-vscode";
      };
      "[markdown]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      "redhat.telemetry.enabled" = false;
      "search.exclude" = {
        "**/bower_components" = true;
        "**/env" = true;
        "**/node_modules" = true;
        "**/pnpm-lock.yaml" = true;
        "**/venv" = true;
      };
      "files.watcherExclude" = {
        "**/.git/objects/**" = true;
        "**/.git/subtree-cache/**" = true;
        "**/node_modules/**" = true;
        "**/env/**" = true;
        "**/venv/**" = true;
        "env-*" = true;
      };
      "workbench.colorTheme" = "Gruvbox Dark Hard";
      "workbench.iconTheme" = "material-icon-theme";
      "workbench.startupEditor" = "none";
      "errorLens.gutterIconsEnabled" = true;
      "errorLens.gutterIconSet" = "defaultOutline";
      "emeraldwalk.runonsave" = {
        "commands" = [
          {
            "cmd" = "goimports-reviser -rm-unused -set-alias -format -use-cache -output write \${file}";
            "match" = "\\.go$";
          }
          {
            "cmd" = "golines \${file} -w";
            "match" = "\\.go$";
          }
        ];
      };
      "haskell.serverExecutablePath" = "/home/tfkhdyt/.nix-profile/bin/haskell-language-server-wrapper";
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
      emeraldwalk.runonsave
      haskell.haskell
      justusadam.language-haskell
    ];
  };
}
