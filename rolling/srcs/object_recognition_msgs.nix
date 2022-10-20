{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "wg-perception";
    repo = "object_recognition_msgs";
    rev = "811fb385ec4c1919dce2b30334fe9f49639073fd";
    hash = "sha256-XDap7WNRF0+1fMI3D0D3skZFU9FYCpi3foXJzxCOSos=";
    name = "wg-perception-object_recognition_msgs-811fb385ec4c1919dce2b30334fe9f49639073fd";
  });
in
{
  object_recognition_msgs = pkg "sha256-XDap7WNRF0+1fMI3D0D3skZFU9FYCpi3foXJzxCOSos=" ".";
}
