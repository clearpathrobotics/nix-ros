{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ipa320";
    repo = "cob_gazebo_plugins";
    rev = "e1166f57264b0921758e420d99cb6ce8b5407d82";
    hash = "sha256-lnmATvh500bxmscRunwFqaCEbKxbnbfBaKPWp6Fzmbw=";
    name = "ipa320-cob_gazebo_plugins-e1166f57264b0921758e420d99cb6ce8b5407d82";
  });
in
{
  cob_gazebo_plugins = pkg "sha256-94XQWWS+zZHECKS2T+TXhIV6vXs6GdFiN3wh2R8AD2A=" "cob_gazebo_plugins";
  cob_gazebo_ros_control = pkg "sha256-V87qCMHQeeWDA9UnEuuj3Xa/JB5luk2lUh/xwhAPULU=" "cob_gazebo_ros_control";
}
