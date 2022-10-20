{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tuw-robotics";
    repo = "tuw_multi_robot";
    rev = "ace27f2d433a8c2ae4bf7a3ed9cb2ba574ca5e27";
    hash = "sha256-58XpsWYij75PlXC90+a7/675vF+jApS40iZOZdgjNmE=";
    name = "tuw-robotics-tuw_multi_robot-ace27f2d433a8c2ae4bf7a3ed9cb2ba574ca5e27";
  });
in
{
  tuw_multi_robot = pkg "sha256-cmdTt/CLUcchZDOWU4WDJmdJyqnD4y0yVxLPvluI614=" "tuw_multi_robot";
  tuw_multi_robot_ctrl = pkg "sha256-CmLgzLqLSMtRwhi6h2Lpk567l4k0GI2EOBV45FGDVYw=" "tuw_multi_robot_ctrl";
  tuw_multi_robot_demo = pkg "sha256-iOxcBDwkn5l+ZoKEYSF7hY7fg6udnKsWKQCo8Oe3P1k=" "tuw_multi_robot_demo";
  tuw_multi_robot_goal_generator = pkg "sha256-T7JKZU9V4KjP3aNwWtQEN4r3gafkXrI4mSh9hDYuk1M=" "tuw_multi_robot_goal_generator";
  tuw_multi_robot_local_behavior_controller = pkg "sha256-ZBe64XFcqH8zZ1oWBnI9k4HbhFkg0tcMx0Ktohubp2Y=" "tuw_multi_robot_local_behavior_controller";
  tuw_multi_robot_router = pkg "sha256-CmV9485xn5iQfSrBmHgMzj4ifH1Bh0osgRuoROlc6rg=" "tuw_multi_robot_router";
  tuw_multi_robot_rviz = pkg "sha256-L25sc5+SH0E8OcwZgpHthxRVHFVNAcc0ijbfpDAdljk=" "tuw_multi_robot_rviz";
  tuw_voronoi_graph = pkg "sha256-a3z6gxAbRKqKlwlIt8/vnD3UMGfXkeQ1wwEc4lVErE0=" "tuw_voronoi_graph";
}
