{ lib
, osConfig
, pkgs
, ...
}: {
  programs.git = {
    enable = true;
    userName = "USERNAME";
    userEmail = "EMAIL";
    signing.key = "GPG-KEY-ID";
    signing.signByDefault = true;
    extraConfig = {
      init = { defaultBranch = "main"; };
    };
  };
}
