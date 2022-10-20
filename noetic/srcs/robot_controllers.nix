{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "fetchrobotics";
    repo = "robot_controllers";
    rev = "c47575d0a18bac62a17faea31cdff1c69bf625b5";
    hash = "sha256-GW0VsqTKZ8n0snReQz+kfFwpXrFIOV368KbUyOu5/ls=";
    name = "fetchrobotics-robot_controllers-c47575d0a18bac62a17faea31cdff1c69bf625b5";
  });
in
{
  robot_controllers = pkg "sha256-5nzlD8HXfSOZxRf5rsmQAJ9K29EXFtJ9c/5u+C591ck=" "robot_controllers";
  robot_controllers_interface = pkg "sha256-cuYCU0ujvKPSM6Em8bnELqXTMDL5aDKAzlaOu4vTaIY=" "robot_controllers_interface";
  robot_controllers_msgs = pkg "sha256-X7rwbR/YuoiQn9JOtVg/eGRQpqBGiR3+B4i4pICFznk=" "robot_controllers_msgs";
}
