{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "facontidavide";
    repo = "ros_type_introspection";
    rev = "f1f7ef5f8e3f1fe71fb3aa8682b59dc0c3920324";
    hash = "sha256-HPQEO6cM+CIbk01nAL+7rnafdE/gBbRV0Zd3XzCd+fs=";
    name = "facontidavide-ros_type_introspection-f1f7ef5f8e3f1fe71fb3aa8682b59dc0c3920324";
  });
in
{
  ros_type_introspection = pkg "sha256-HPQEO6cM+CIbk01nAL+7rnafdE/gBbRV0Zd3XzCd+fs=" ".";
}
