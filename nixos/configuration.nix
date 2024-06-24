# This is your system's configuration file.
# Use this to configure your system environment (it replaces /etc/nixos/configuration.nix)
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # You can import other NixOS modules here
  imports = [
    # If you want to use modules from other flakes (such as nixos-hardware):
    # inputs.hardware.nixosModules.common-cpu-amd
    # inputs.hardware.nixosModules.common-ssd

    # You can also split up your configuration and import pieces of it here:
    # ./users.nix

    # Import your generated (nixos-generate-config) hardware configuration
    ./hardware-configuration.nix
    inputs.home-manager.nixosModules.home-manager
  ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # If you want to use overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
    };
  };

  nix = let
    flakeInputs = lib.filterAttrs (_: lib.isType "flake") inputs;
  in {
    settings = {
      # Enable flakes and new 'nix' command
      experimental-features = "nix-command flakes";
      # Opinionated: disable global registry
      # flake-registry = "";
      # Workaround for https://github.com/NixOS/nix/issues/9574
      nix-path = config.nix.nixPath;
    };
    # Opinionated: disable channels
    # channel.enable = false;

    # Opinionated: make flake registry and nix path match flake inputs
    # registry = lib.mapAttrs (_: flake: {inherit flake;}) flakeInputs;
    # nixPath = lib.mapAttrsToList (n: _: "${n}=flake:${n}") flakeInputs;
  };

  networking = {
    hostName = "nixos"; # Define your hostname.
    networkmanager.enable = true; 
  };
  time.timeZone = "Asia/Jakarta"; # Set your time zone.
  i18n.defaultLocale = "en_US.UTF-8"; # Select internationalisation properties.

  hardware = {
    opengl = {
      enable = true;
      extraPackages = with pkgs; [
        intel-media-driver # LIBVA_DRIVER_NAME=iHD
        intel-vaapi-driver # LIBVA_DRIVER_NAME=i965 (older but works better for Firefox/Chromium)
        libvdpau-va-gl
      ];
    };
    pulseaudio.enable = false;
    bluetooth.enable = true;
    bluetooth.powerOnBoot = true;
  };

  programs = {
    dconf.enable = true;
    starship.enable = true;
    firefox.enable = true;
  };

  services = {
    printing.enable = true; # Enable CUPS to print documents.
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      # If you want to use JACK applications, uncomment this
      #jack.enable = true;

      # use the example session manager (no others are packaged yet so this is enabled by default,
      # no need to redefine it in your config for now)
      #media-session.enable = true;
    };
    blueman.enable = true;
    postgresql = {
      enable = true;
      enableTCPIP = true;
      authentication = pkgs.lib.mkOverride 10 ''
        #...
        #type database DBuser origin-address auth-method
        # ipv4
        host  all      all     127.0.0.1/32   scram-sha-256
        # ipv6
        host all       all     ::1/128        scram-sha-256
        # local
        local all       all     trust
      '';
      initialScript = pkgs.writeText "backend-initScript" ''
        CREATE ROLE nixcloud WITH LOGIN PASSWORD 'nixcloud' CREATEDB;
        CREATE DATABASE nixcloud;
        GRANT ALL PRIVILEGES ON DATABASE nixcloud TO nixcloud;
      '';
    };
    neovim = {
      enable = true;
      defaultEditor = true;
    };
    openssh.enable = true;
  };

  security = {
    pam.services.hyprlock = {};
    polkit.enable = true;
    rtkit.enable = true;
  };

  users.users.tfkhdyt = {
    isNormalUser = true;
    description = "Taufik Hidayat";
    extraGroups = [ "networkmanager" "wheel" ];
  };

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

  nix.gc = {
  	automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  fonts = {
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji
      (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    ];
    fontconfig = {
      defaultFonts = {
        serif = ["Noto Serif" "Noto Color Emoji"];
        sansSerif = ["Noto Sans" "Noto Color Emoji"];
        monospace = ["JetBrainsMono NF" "Noto Color Emoji"];
      };
    };
  };

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  system.stateVersion = "24.05";

  home-manager = {
    extraSpecialArgs = { inherit inputs outputs; };
    users = {
      # Import your home-manager configuration
      tfkhdyt = import ../home-manager/home.nix;
    };
  };
}
