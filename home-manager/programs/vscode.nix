{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    userSettings = {
      "terminal.integrated.fontSize" = 16;
      "editor.fontSize" = 16;
      "go.inlayHints.assignVariableTypes" = true;
      "go.inlayHints.constantValues" = true;
      "go.inlayHints.parameterNames" = true;
      "go.inlayHints.rangeVariableTypes" = true;
      "typescript.preferGoToSourceDefinition" = true;
      "javascript.preferGoToSourceDefinition" = true;
      "eslint.format.enable" = true;
      "prettier.jsxSingleQuote" = true;
      "svelte.enable-ts-plugin" = true;
      "git.openRepositoryInParentFolders" = "always";
      "nix.enableLanguageServer" = true;
      "editor.minimap.autohide" = true;
      "diffEditor.hideUnchangedRegions.enabled" = true;
      "editor.inlayHints.fontSize" = 12;
      "editor.inlayHints.padding" = true;
      "git.confirmSync" = false;
      "git.autofetch" = true;
      "[jsonc]" = {
        "editor.defaultFormatter" = "vscode.json-language-features";
      };
      "go.alternateTools" = {
        "staticcheck" = "/home/tfkhdyt/.nix-profile/bin/staticcheck";
        "gopls" = "/home/tfkhdyt/.nix-profile/bin/gopls";
      };
      "editor.fontLigatures" = true;
      "editor.wordWrap" = "on";
      "editor.wrappingIndent" = "indent";
      "terminal.integrated.gpuAcceleration" = "on";
      "[astro]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      "editor.formatOnSave" = true;
      "[typescriptreact]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      "editor.tabSize" = 2;
      "[javascript]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      "editor.mouseWheelScrollSensitivity" = 2;
      "editor.cursorSmoothCaretAnimation" = "on";
      "[typescript]" = {
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
      "editor.quickSuggestions" = {
        "strings" = "on";
      };
      "editor.codeActionsOnSave" = {
        "source.fixAll" = "always";
      };
      "eslint.validate" = [
        "javascript"
        "typescript"
        "javascriptreact"
        "typescriptreact"
        "astro"
        "svelte"
      ];
      "go.lintOnSave" = "off";
      "[svelte]" = {
        "editor.defaultFormatter" = "svelte.svelte-vscode";
      };
      "javascript.inlayHints.functionLikeReturnTypes.enabled" = true;
      "javascript.inlayHints.parameterNames.enabled" = "all";
      "javascript.inlayHints.parameterTypes.enabled" = true;
      "javascript.inlayHints.propertyDeclarationTypes.enabled" = true;
      "typescript.inlayHints.functionLikeReturnTypes.enabled" = true;
      "typescript.inlayHints.parameterNames.enabled" = "all";
      "typescript.inlayHints.parameterTypes.enabled" = true;
      "typescript.inlayHints.propertyDeclarationTypes.enabled" = true;
      "editor.linkedEditing" = true;
      "workbench.colorTheme" = "Gruvbox Dark Hard";
      "workbench.iconTheme" = "material-icon-theme";
      "workbench.startupEditor" = "none";
      "errorLens.gutterIconsEnabled" = true;
      "errorLens.gutterIconSet" = "defaultOutline";
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
    ];
  };
}
