{
  inputs,
  config,
  pkgs,
  ...
}: {
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home = {
    username = "thivejan";
    homeDirectory = "/home/thivejan";
    stateVersion = "22.11";
  };

  imports = [
    ./graphical
  ];
  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.

  # Let Home Manager install and manage itself.
  programs = {
    home-manager.enable = true;
  };

  nixpkgs.config.allowUnfreePredicate = pkg: true;

  fonts.fontconfig.enable = true;

  # Add support for .local/bin
  home.sessionPath = [
    "$HOME/.local/bin"
  ];
}
