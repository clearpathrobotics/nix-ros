{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-naoqi";
    repo = "naoqi_bridge_msgs";
    rev = "ec254a97361b95b8e92c1b790e29f87d2865bf02";
    hash = "sha256-+z/a42+gb7w4DuuOtDRUgf2oPkHRJgN6HXTIOJWlD2w=";
    name = "ros-naoqi-naoqi_bridge_msgs-ec254a97361b95b8e92c1b790e29f87d2865bf02";
  });
in
{
  naoqi_bridge_msgs = pkg "sha256-+z/a42+gb7w4DuuOtDRUgf2oPkHRJgN6HXTIOJWlD2w=" ".";
}
