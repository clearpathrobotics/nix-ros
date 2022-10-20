{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-acceleration";
    repo = "adaptive_component";
    rev = "491b0fe6c48a917ccf33b65b6bd355798b70e0bb";
    hash = "sha256-W7/vGlSCfAW+RH7nsv4Po+MFZLDvwzuq/iSATbF9jaQ=";
    name = "ros-acceleration-adaptive_component-491b0fe6c48a917ccf33b65b6bd355798b70e0bb";
  });
in
{
  adaptive_component = pkg "sha256-W7/vGlSCfAW+RH7nsv4Po+MFZLDvwzuq/iSATbF9jaQ=" ".";
}
