{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  # Basic C++ compilation tools
  nativeBuildInputs = with pkgs; [
    gcc          # GNU Compiler Collection (includes g++)
    cmake        # Build system generator
    ninja        # Fast build system
    pkg-config   # Helper tool for compiling with libraries
    clang
    qmk
    usbutils
  ];

  # Environment variables
  shellHook = ''
    echo "C++ development shell ready"
    echo "Compiler: $(g++ --version | head -n1)"
    echo "QMK Dev environment ready to go."
  '';
}
