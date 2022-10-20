{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "OctoMap";
    repo = "octomap_msgs";
    rev = "dcaaf62bd071db0fcd806a98a9101a2e470f7f6d";
    hash = "sha256-VBlh+BHsJd9Qrl4jp1Jn17clV/3aSa36BTGBeVE+CvM=";
    name = "OctoMap-octomap_msgs-dcaaf62bd071db0fcd806a98a9101a2e470f7f6d";
  });
in
{
  octomap_msgs = pkg "sha256-VBlh+BHsJd9Qrl4jp1Jn17clV/3aSa36BTGBeVE+CvM=" ".";
}
