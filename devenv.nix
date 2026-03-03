{ pkgs, ... }:

{
  packages = [ pkgs.git ];

  languages = {
    elixir = {
      enable = true;
      package = pkgs.beamMinimal29Packages.elixir_1_20;
      lsp.enable = true;
    };

    nix.enable = true;
  };

  env = {
    MIX_OS_DEPS_COMPILE_PARTITION_COUNT = "16";
    ERL_AFLAGS = "+pc unicode -kernel shell_history enabled";
    ELIXIR_ERL_OPTIONS = "+fnu +sssdio 128";
  };

  dotenv.disableHint = true;
}
