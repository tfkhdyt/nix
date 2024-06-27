{
  security = {
    pam.services.hyprlock.text = "auth include login";
    polkit.enable = true;
    rtkit.enable = true;
  };
}
