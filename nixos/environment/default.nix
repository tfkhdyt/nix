{ pkgs, ... }: {
  environment = {
    systemPackages = with pkgs; [
      bat
      dust
      duf
      eza
      fd
      procs
      ripgrep
      sd
      gcc13
      redis
      wl-clipboard-rs
      alsa-utils
      brightnessctl
      libnotify
      pwvucontrol
      lxqt.lxqt-policykit
      openssl
    ];
    sessionVariables = {
      NIXOS_OZONE_WL = "1";
      BEMENU_OPTS = "--fb '#1e1e2e' --ff '#cdd6f4' --nb '#1e1e2e' --nf '#cdd6f4' --tb '#1e1e2e' --hb '#1e1e2e' --tf '#f38ba8' --hf '#f9e2af' --af '#cdd6f4' --ab '#1e1e2e'";
    };
    shellAliases = {
      ls = "eza --icons --group-directories-first";
      ll = "eza -lbh --icons --group-directories-first";
      v = "nvim";
      vs = "sudoedit";
      lg = "lazygit";
      rebuild = "sudo nixos-rebuild switch";
    };
  };
}