{ pkgSrc, fetchFromBitbucket }:
let
  pkg = pkgSrc (fetchFromBitbucket {
    owner = "marvelmind_robotics";
    repo = "ros_marvelmind_package";
    rev = "cc2602cc8e39c6b0ac4d23db73ac4375767da3ad";
    hash = "sha256-QGBkWTlCftTCeo7ep56X1Uyc1GmgVbMb8k4XEsNNvKw=";
    name = "marvelmind_robotics-ros_marvelmind_package-cc2602cc8e39c6b0ac4d23db73ac4375767da3ad";
  });
in
{
  marvelmind_nav = pkg "sha256-QGBkWTlCftTCeo7ep56X1Uyc1GmgVbMb8k4XEsNNvKw=" ".";
}
