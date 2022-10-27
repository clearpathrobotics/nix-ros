{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "husky";
    repo = "husky";
    rev = "184545164713fe5addb7fe9b38a5bbcb54b77ced";
    hash = "sha256-XFajdQSHH4xQ+WRUCf0xz8oSpwCYLmADWOtsoa+GMts=";
    name = "husky-husky-184545164713fe5addb7fe9b38a5bbcb54b77ced";
  });
in
{
  husky_control = pkg "sha256-2t8rChjlXfGXALypPL/xtTYh7A/ujuCSisvaBy5l+aY=" "husky_control";
  husky_description = pkg "sha256-YJo5UgheaEMdMT+oSR+spxCyPslPINGY+Yj4H6+DhBk=" "husky_description";
  husky_desktop = pkg "sha256-047yWjUXiScv8lgZPPeSWX+fHUPSuWLqLuBI5a+SDwc=" "husky_desktop";
  husky_gazebo = pkg "sha256-52SQ0Nhh1gLlYVJWZmOwCfHgPctX4t4ARZ4a1GKIyeQ=" "husky_gazebo";
  husky_msgs = pkg "sha256-JGaIAZyjePgJPhl1CreSQ9oeb8/u+LnI7Pw/+fnF18E=" "husky_msgs";
  husky_navigation = pkg "sha256-vZhtIl8HA6wqn18UXs4peDlw6CbQtR2a5mAbVbHPLzI=" "husky_navigation";
  husky_simulator = pkg "sha256-rSR4j44nzPsubOFhcNzH3PiGbMonDeChYwWEBJvtCt4=" "husky_simulator";
  husky_viz = pkg "sha256-I/QxIywA/wkB/9NDos3Sjxwi/wOnLvJHS4oKDz7RlhE=" "husky_viz";
}
