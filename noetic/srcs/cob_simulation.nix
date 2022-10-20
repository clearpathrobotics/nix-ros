{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ipa320";
    repo = "cob_simulation";
    rev = "d2423b6a42460c30b28d6d3ce87e21a3c20d8e5b";
    hash = "sha256-fY2eqjGQJRf1RjF7cLRG+jaVBo1dYvRtVdFVfFjwsys=";
    name = "ipa320-cob_simulation-d2423b6a42460c30b28d6d3ce87e21a3c20d8e5b";
  });
in
{
  cob_bringup_sim = pkg "sha256-LuNPPNGd/ILYpbQrlyCmes5t8O1R6NUoKsLhZ4sw6zI=" "cob_bringup_sim";
  cob_gazebo = pkg "sha256-U6/vAxc99kCTGPxarjF5Kj0sP0A+Nd/QQucoNw2CnK8=" "cob_gazebo";
  cob_gazebo_objects = pkg "sha256-cIctnhEPnvs49UTpMnnpU2bBrYk8fXYnE+Yi+PQumfk=" "cob_gazebo_objects";
  cob_gazebo_tools = pkg "sha256-pPncCifbuhB3aCBR07QOVdTrR0yhDvD69Ghy1FMAlIs=" "cob_gazebo_tools";
  cob_gazebo_worlds = pkg "sha256-hEd4NVX6+8Jy1Hue7bCbbAP5jdAZWGyGg2wGyiH6Qz8=" "cob_gazebo_worlds";
  cob_simulation = pkg "sha256-yaoNddvca1vFrBN+fExsmf2qYXQ50PHu8JWMc+A3wB4=" "cob_simulation";
}
