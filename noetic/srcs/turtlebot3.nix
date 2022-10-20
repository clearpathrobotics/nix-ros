{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ROBOTIS-GIT";
    repo = "turtlebot3";
    rev = "4ae959ea6a52415c90bf752d2b76e3e28f8a87e2";
    hash = "sha256-RzqssMchTA9I9Yzpt1Qmp5AbmcjNQdHjAJGA4eWKCjI=";
    name = "ROBOTIS-GIT-turtlebot3-4ae959ea6a52415c90bf752d2b76e3e28f8a87e2";
  });
in
{
  turtlebot3 = pkg "sha256-9MxQRnr3FrvBi9VTVP81qla6+qjcT3P9ESMJtNQQSFg=" "turtlebot3";
  turtlebot3_bringup = pkg "sha256-CXeIK2tk5SXWP38YbL6ILRwZTyVi2XLoFkHqMT6tiRk=" "turtlebot3_bringup";
  turtlebot3_description = pkg "sha256-PV8KFrkjKEx8TmicrmsPXDQNSi5WZbaunpQv8piUY5w=" "turtlebot3_description";
  turtlebot3_example = pkg "sha256-PKSIklWzd48YxR+YRuZEKaVtqLdT3hCTTorcDkLxBsY=" "turtlebot3_example";
  turtlebot3_navigation = pkg "sha256-LFNC9EkFQ+qnH3D7akAbLjyH5okYtzDO0/P7flaPllc=" "turtlebot3_navigation";
  turtlebot3_slam = pkg "sha256-0efj388FbFEnlNCOrdIvcY4eAqWAkyYd5+jhAhSjBjo=" "turtlebot3_slam";
  turtlebot3_teleop = pkg "sha256-FdlWnE4+Ji8C4LARhjKn7JGbLOpPwkSlaHUyzksqOsw=" "turtlebot3_teleop";
}
