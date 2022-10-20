{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "hatchbed";
    repo = "opensw_ros";
    rev = "4c0fcad1daa180728291451fa97e38cc37492f10";
    hash = "sha256-489puaUw9IctBtViBDL1DkQmivAk3e1B9F64ZQz9AkQ=";
    name = "hatchbed-opensw_ros-4c0fcad1daa180728291451fa97e38cc37492f10";
  });
in
{
  opensw_ros = pkg "sha256-489puaUw9IctBtViBDL1DkQmivAk3e1B9F64ZQz9AkQ=" ".";
}
