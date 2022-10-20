{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "husky";
    repo = "husky";
    rev = "d775de06b11458e86df028dca9bd0376e94d43ce";
    hash = "sha256-Z6Y6SsJwKdWRRFaoU3ypfWHnUPp8XptlUg/0RHnIiIE=";
    name = "husky-husky-d775de06b11458e86df028dca9bd0376e94d43ce";
  });
in
{
  husky_control = pkg "sha256-dVaaf/0E+JQDIvpE4CbaeZoZ+1/7r+1ynErc2ANOF6I=" "husky_control";
  husky_description = pkg "sha256-YJo5UgheaEMdMT+oSR+spxCyPslPINGY+Yj4H6+DhBk=" "husky_description";
  husky_desktop = pkg "sha256-047yWjUXiScv8lgZPPeSWX+fHUPSuWLqLuBI5a+SDwc=" "husky_desktop";
  husky_gazebo = pkg "sha256-+0BebnHmrl9aa+unVFghj+YryEw8EnvDRisOvIdP538=" "husky_gazebo";
  husky_msgs = pkg "sha256-JGaIAZyjePgJPhl1CreSQ9oeb8/u+LnI7Pw/+fnF18E=" "husky_msgs";
  husky_navigation = pkg "sha256-vZhtIl8HA6wqn18UXs4peDlw6CbQtR2a5mAbVbHPLzI=" "husky_navigation";
  husky_simulator = pkg "sha256-rSR4j44nzPsubOFhcNzH3PiGbMonDeChYwWEBJvtCt4=" "husky_simulator";
  husky_viz = pkg "sha256-I/QxIywA/wkB/9NDos3Sjxwi/wOnLvJHS4oKDz7RlhE=" "husky_viz";
}
