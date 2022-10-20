{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PR2";
    repo = "pr2_simulator";
    rev = "ad58416f484300e41bbab27c8bfc2a11b9a96e1d";
    hash = "sha256-5VCSl4IwXiYuIptj9W5KXangJYbQqfSEmIqjYbSD7fw=";
    name = "PR2-pr2_simulator-ad58416f484300e41bbab27c8bfc2a11b9a96e1d";
  });
in
{
  pr2_controller_configuration_gazebo = pkg "sha256-MDlvzd4pdInfsZYrEbBCP/C4i5qrWNmv7P53fTUsAmc=" "pr2_controller_configuration_gazebo";
  pr2_gazebo = pkg "sha256-ITxdbyszak2Prx1F9X7WuAW2Zf/UoEQhnCUa4U5/kEg=" "pr2_gazebo";
  pr2_gazebo_plugins = pkg "sha256-RGRX02nW3txDOmWs0lJbRflZ4rg5K3FxkXgfm7oWrEI=" "pr2_gazebo_plugins";
  pr2_simulator = pkg "sha256-Ama8YxKZJgRoLKpew8xX+D7bMBc5nx7Qo8VXMjqlhX8=" "pr2_simulator";
}
