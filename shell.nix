{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  # Get dependencies from the main package
  inputsFrom = [ (pkgs.callPackage ./default.nix { }) ];
  # Additional tooling
  buildInputs = with pkgs; [
    gnumake
    cargo
    rust-analyzer # LSP Server
    rustfmt       # Formatter
    clippy        # Linter
  ];
}
