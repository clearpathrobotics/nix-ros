{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "urg_node";
    rev = "cbd8c4e3ab1b739e38808ba598e16f935c3e9450";
    hash = "sha256-5I3MgR4LgAZZ1J5KC5KZBkdkC3dIOB3B+0br1tfGtTc=";
    name = "ros-drivers-urg_node-cbd8c4e3ab1b739e38808ba598e16f935c3e9450";
  });
in
{
  urg_node = pkg "sha256-5I3MgR4LgAZZ1J5KC5KZBkdkC3dIOB3B+0br1tfGtTc=" ".";
}
