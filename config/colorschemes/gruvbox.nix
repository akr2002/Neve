{ lib, config, ... }:
{
  options = {
    gruvbox.enable = lib.mkEnableOption "Enable gruvbox module";
  };
  config = lib.mkIf config.gruvbox.enable {
    colorschemes = {
      gruvbox = {
        enable = true;
      };
    };
  };
}
