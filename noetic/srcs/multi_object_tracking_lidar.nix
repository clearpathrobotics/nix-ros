{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "praveen-palanisamy";
    repo = "multiple-object-tracking-lidar";
    rev = "27db548ea51d8faa498c9a2492b172219d6a56fb";
    hash = "sha256-9nep2bUpG6eBZRrbp41xXXON2HYFY/tU78SOmk6NQDM=";
    name = "praveen-palanisamy-multiple-object-tracking-lidar-27db548ea51d8faa498c9a2492b172219d6a56fb";
  });
in
{
  multi_object_tracking_lidar = pkg "sha256-9nep2bUpG6eBZRrbp41xXXON2HYFY/tU78SOmk6NQDM=" ".";
}
