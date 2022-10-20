{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "NewEagleRaptor";
    repo = "raptor-dbw-ros";
    rev = "7feaf35d996addac469a0816ab0d7ab9037ca6dd";
    hash = "sha256-ObxA7iETuGnBt8ywxIxEqkIc0t/I9pyxsFFEZeLu2Ls=";
    name = "NewEagleRaptor-raptor-dbw-ros-7feaf35d996addac469a0816ab0d7ab9037ca6dd";
  });
in
{
  can_dbc_parser = pkg "sha256-6BAZH71AnTRtkkW03VDGUQaGXXk2jKPOPTWzjr4DeJI=" "can_dbc_parser";
  pdu = pkg "sha256-EiGD4dufzgDni+1nEN9BjtrYTGrQuSEu+sY5/r4WhKE=" "pdu";
  pdu_msgs = pkg "sha256-Xu0rVu48YRMaFlTZr+NDniM7SbbVdQjsGhDYioEaQcM=" "pdu_msgs";
  raptor_dbw = pkg "sha256-0iCXgiVSxxJba2Zil1WEpKOLO40luUzxlYnPCb3vYaw=" "raptor_dbw";
  raptor_dbw_can = pkg "sha256-+zPDj0g4x24THaFdQZHDw82he3QJu5CGbXS1bUlzqOo=" "raptor_dbw_can";
  raptor_dbw_joystick_demo = pkg "sha256-M7kePWkrsg9z+Y/QEX192R5EH+Zc3KQzIVqg1dGmhxg=" "raptor_dbw_joystick_demo";
  raptor_dbw_joystick_speed_demo = pkg "sha256-hEVPt1poXmrE7Lj2v1ldrIMxjd79PJnow8PrhvkYa50=" "raptor_dbw_joystick_speed_demo";
  raptor_dbw_msgs = pkg "sha256-JV7Pzf1G7ULcmhI3RUm+RhQ3utemU8D/A3GcI/IqSvc=" "raptor_dbw_msgs";
}
