{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "SteveMacenski";
    repo = "slam_toolbox";
    rev = "8ce75ac3e8a5e6ff6c58bcf020e3fa702a1611c6";
    hash = "sha256-H/yvzG6EMr5uirFTcuSR++SJ6qfzs1+3m1aOhy32cRk=";
    name = "SteveMacenski-slam_toolbox-8ce75ac3e8a5e6ff6c58bcf020e3fa702a1611c6";
  });
in
{
  slam_toolbox = pkg "sha256-/uCil/2eimozVU9jwT2mGZNc1f2H55q5MCmpagwDNpc=" "slam_toolbox";
  slam_toolbox_msgs = pkg "sha256-pzBIa7hMYQFx/Cjr2UK3vt0c9+JBnYSMxapio9xd+Qk=" "slam_toolbox_msgs";
  slam_toolbox_rviz = pkg "sha256-PSlcAtVGMr8X7/nLYx8eB53Apr7NsNa7+U5gidAMWZk=" "slam_toolbox_rviz";
}
