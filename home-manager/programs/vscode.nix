{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    # package = pkgs.vscodium;
    userSettings = {
      "terminal.integrated.fontSize" = 16;
      "terminal.integrated.gpuAcceleration" = "on";
      "editor.fontSize" = 16;
      "editor.minimap.autohide" = true;
      "editor.minimap.renderCharacters" = false;
      "editor.inlayHints.enabled" = false;
      "editor.inlayHints.fontSize" = 12;
      "editor.inlayHints.padding" = true;
      "editor.fontLigatures" = true;
      "editor.wordWrap" = "on";
      "editor.wrappingIndent" = "indent";
      "editor.formatOnSave" = false;
      # "editor.formatOnSaveMode" = "modificationsIfAvailable";
      "editor.tabSize" = 2;
      "editor.mouseWheelScrollSensitivity" = 2;
      # "editor.cursorSmoothCaretAnimation" = "on";
      "editor.quickSuggestions" = {
        "strings" = "on";
      };
      "editor.quickSuggestionsDelay" = 300;
      "editor.linkedEditing" = true;
      "editor.fontFamily" = "'JetBrainsMono NF', 'Droid Sans Mono', 'monospace', monospace";
      "editor.codeActionsOnSave" = {
        # "source.fixAll" = "always";
        # "source.organizeImports" = "always";
        # "source.addMissingImports" = "always";
        # "source.removeUnusedImports" = "always";
        # "source.sortImports" = "always";
      };
      # "editor.detectIndentation" = false;
      "go.inlayHints.assignVariableTypes" = true;
      "go.inlayHints.constantValues" = true;
      "go.inlayHints.parameterNames" = true;
      "go.inlayHints.rangeVariableTypes" = true;
      "go.alternateTools" = {
        "gofumpt" = "${pkgs.gofumpt}/bin/gofumpt";
        "golangci-lint" = "${pkgs.golangci-lint}/bin/golangci-lint";
        "gomodifytags" = "${pkgs.gomodifytags}/bin/gomodifytags";
        "gopls" = "${pkgs.gopls}/bin/gopls";
        "impl" = "${pkgs.impl}/bin/impl";
        "staticcheck" = "${pkgs.go-tools}/bin/staticcheck";
        "delve" = "${pkgs.delve}/bin/dlv";
      };
      "go.lintTool" = "golangci-lint";
      "gopls" = {
        "formatting.gofumpt" = true;
        "ui.semanticTokens" = true;
      };
      "editor.semanticHighlighting.enabled" = true;
      "terminal.integrated.minimumContrastRatio" = 1;
      # "go.formatTool" = "gofumpt";
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
      "[css]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      "[html]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      "[json]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      # "[go]" = {
      #   "editor.tabSize" = 4;
      # };
      # "[java]" = {
      #   "editor.tabSize" = 4;
      # };
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
      # "workbench.colorTheme" = "poimandres";
      "workbench.iconTheme" = "vscode-jetbrains-icon-theme-2023-auto";
      "workbench.startupEditor" = "none";
      "errorLens.gutterIconsEnabled" = true;
      "errorLens.gutterIconSet" = "defaultOutline";
      "emeraldwalk.runonsave" = {
        "commands" = [
          {
            "cmd" =
              "${pkgs.goimports-reviser}/bin/goimports-reviser -rm-unused -set-alias -format -use-cache -output write \${file}";
            "match" = "\\.go$";
          }
          {
            "cmd" = "${pkgs.golines}/bin/golines \${file} -w";
            "match" = "\\.go$";
          }
        ];
      };
      # "haskell.serverExecutablePath" = "${pkgs.haskell-language-server}/bin/haskell-language-server-wrapper";
      "gitblame.inlineMessageEnabled" = true;
      "gitblame.inlineMessageFormat" = "\${author.name} (\${time.ago}) - \${commit.summary}";
      # "gleam.path" = "${pkgs.gleam}/bin/gleam";
      "workbench.sideBar.location" = "right";
      # "java.jdt.ls.java.home" = "${pkgs.graalvm-ce.home}";
      # "spring-boot.ls.java.home" = "${pkgs.graalvm-ce.home}";
      "terminal.integrated.shellIntegration.decorationsEnabled" = "never";
      # "workbench.list.smoothScrolling" = true;
      # "editor.smoothScrolling" = true;
      # "terminal.integrated.smoothScrolling" = true;
      "editor.guides.bracketPairs" = "active";
      "workbench.activityBar.location" = "top";
      "editor.guides.bracketPairsHorizontal" = false;
      "java.compile.nullAnalysis.mode" = "automatic";
      # "eslint.run" = "onSave";
      "eslint.problems.shortenToSingleLine" = true;
      # "workbench.editor.showTabs" = "single";
      "workbench.tree.indent" = 20;
      "workbench.editor.empty.hint" = "hidden";
      "breadcrumbs.enabled" = true;
      "breadcrumbs.symbolPath" = "off";
      "breadcrumbs.filePath" = "on";
      # "editor.guides.indentation" = false;
      "editor.stickyScroll.enabled" = true;
      "typescript.suggest.completeFunctionCalls" = true;
      "javascript.suggest.completeFunctionCalls" = true;
      "tinymist.serverPath" = "${pkgs.tinymist}/bin/tinymist";
      "tinymist.formatterMode" = "typstyle";
      "tinymist.fontPaths" = [ "\${workspaceFolder}/fonts" ];
      "window.titleBarStyle" = "custom";
      "window.dialogStyle" = "custom";
      "editor.lineHeight" = 1.6;
      "terminal.integrated.lineHeight" = 0;
      # "nix.formatterPath" = "${pkgs.nixfmt-rfc-style}/bin/nixfmt";
      "nix.enableLanguageServer" = true;
      "nix.serverPath" = "${pkgs.nil}/bin/nil";
      # "workbench.colorCustomizations" = {
      #   "editorStickyScroll.background" = "#000000";
      #   "editorStickyScrollHover.background" = "#272930";
      # };
      "extensions.autoUpdate" = false;
      "window.autoDetectColorScheme" = true;
      "window.autoDetectHighContrast" = false;
      "workbench.preferredDarkColorTheme" = "poimandres";
      "workbench.preferredLightColorTheme" = "Atom One Light";
      "zig.path" = "${pkgs.zig}/bin/zig";
      "zig.zls.path" = "${pkgs.zls}/bin/zls";
      "zig.zls.enabled" = "on";
      "zig.buildOnSave" = true;
      "zig.zls.enableBuildOnSave" = true;
      "window.openFoldersInNewWindow" = "off";
      "window.openWithoutArgumentsInNewWindow" = "off";
      "extensions.autoCheckUpdates" = false;
    };
    extensions = with pkgs.vscode-marketplace; [
      akamud.vscode-theme-onedark
      tal7aouy.icons
      jripouteau.adonis-vscode-extension
      astro-build.astro-vscode
      formulahendry.auto-complete-tag
      usernamehw.errorlens
      dbaeumer.vscode-eslint
      waderyan.gitblame
      golang.go
      cardinal90.multi-cursor-case-preserve
      christian-kohler.npm-intellisense
      christian-kohler.path-intellisense
      esbenp.prettier-vscode
      supermaven.supermaven
      svelte.svelte-vscode
      bradlc.vscode-tailwindcss
      meganrogge.template-string-converter
      rangav.vscode-thunder-client
      redhat.vscode-yaml
      tamasfe.even-better-toml
      moalamri.inline-fold
      emeraldwalk.runonsave
      renesaarsoo.sql-formatter-vsc
      bmewburn.vscode-intelephense-client
      ms-azuretools.vscode-docker
      chadalen.vscode-jetbrains-icon-theme
      thoughtsdump.custom-xml-formatter
      rust-lang.rust-analyzer
      alefragnani.project-manager
      myriad-dreamin.tinymist
      sebsojeda.vscode-svx
      jnoortheen.nix-ide
      pmndrs.pmndrs
      # github.copilot
      imagio.vscode-dimmer-block
      akamud.vscode-theme-onelight
      pkief.material-icon-theme
      ziglang.vscode-zig
      mkhl.direnv
      prisma.prisma
    ];
    keybindings = [
      {
        "key" = "alt+f";
        "command" = "editor.action.formatDocument";
        "when" =
          "editorHasDocumentFormattingProvider && editorTextFocus && !editorReadonly && !inCompositeEditor";
      }
      {
        "key" = "ctrl+shift+a";
        "command" = "editor.action.sourceAction";
      }
      {
        "key" = "shift+alt+down";
        "command" = "editor.action.copyLinesDownAction";
        "when" = "editorTextFocus && !editorReadonly";
      }
      {
        "key" = "shift+alt+up";
        "command" = "editor.action.copyLinesUpAction";
        "when" = "editorTextFocus && !editorReadonly";
      }
    ];
  };
}
