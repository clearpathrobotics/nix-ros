{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "dynamic_reconfigure";
    rev = "2654f228adae0848c6e9b70fcf07f890ca6a2841";
    hash = "sha256-xKyCoAlVMYi6AxQQC7NBEqKwH4HU4IHqYPMQVS/I3xo=";
    name = "ros-dynamic_reconfigure-2654f228adae0848c6e9b70fcf07f890ca6a2841";
  });
in
{
  dynamic_reconfigure = pkg "sha256-xKyCoAlVMYi6AxQQC7NBEqKwH4HU4IHqYPMQVS/I3xo=" ".";
}
