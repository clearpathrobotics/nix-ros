{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "JdeRobot";
    repo = "assets";
    rev = "1217f4612c41b913fc4b693fb9834288b86b8736";
    hash = "sha256-sbYLxp8vHghWh9SwS8rIzsovw2X39HA8KA9X8Ra11cI=";
    name = "JdeRobot-assets-1217f4612c41b913fc4b693fb9834288b86b8736";
  });
in
{
  jderobot_assets = pkg "sha256-l0x3zIB89xIKPsrWgt8kr2Y6OPTPAF4Am4lvGMMdA0Y=" "jderobot_assets";
}
