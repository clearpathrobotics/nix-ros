{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "stonier";
    repo = "ecl_navigation";
    rev = "9bac52d0e386b6cf1003e1b63e65483dacd76963";
    hash = "sha256-XYe68I2/NZ6PajTRnA+H/oet+HtKnllXTly1s4Y+c0Q=";
    name = "stonier-ecl_navigation-9bac52d0e386b6cf1003e1b63e65483dacd76963";
  });
in
{
  ecl_mobile_robot = pkg "sha256-51CJT+8WnuwK3b3txeAPa7U0mNSxeC7/ndBmD+yTTv0=" "ecl_mobile_robot";
  ecl_navigation = pkg "sha256-z63hJpfoyqhP8rI/Ri/3Kt+em5xuoOr0LSYOyW1LPVU=" "ecl_navigation";
}
