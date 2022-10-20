{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ijnek";
    repo = "soccer_object_msgs";
    rev = "18144b612abef5219658c99f2a71ea66025f5b28";
    hash = "sha256-2kweKjwQqCrwMUaP4ddCNQTNcPR+lGzM/g8iwzb/QH8=";
    name = "ijnek-soccer_object_msgs-18144b612abef5219658c99f2a71ea66025f5b28";
  });
in
{
  soccer_object_msgs = pkg "sha256-2kweKjwQqCrwMUaP4ddCNQTNcPR+lGzM/g8iwzb/QH8=" ".";
}
