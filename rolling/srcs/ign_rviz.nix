{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ignitionrobotics";
    repo = "ign-rviz";
    rev = "f5d72f3e07cedc8dcf6882646de511a7c8896fd1";
    hash = "sha256-P61gfePNVsWyRr0kzCCFv1JOZYOuuH1cmDIwZW8gw6Y=";
    name = "ignitionrobotics-ign-rviz-f5d72f3e07cedc8dcf6882646de511a7c8896fd1";
  });
in
{
  ign_rviz = pkg "sha256-rN6Cjp/fl+6uF/1VwAjLQVqfHNj8K8/ls4dlibygDPo=" "ign_rviz";
  ign_rviz_common = pkg "sha256-rb2pdbJDIzvM9V2jH4jX7eJhfbBXaO6VznwR3b5/a/g=" "ign_rviz_common";
  ign_rviz_plugins = pkg "sha256-O48G20WxC/meH7au+PdR/BHmDpWam4+pz7rnxMxoM4k=" "ign_rviz_plugins";
}
