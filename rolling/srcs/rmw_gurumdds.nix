{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rmw_gurumdds";
    rev = "c982e8624c2409cb84533e7c831c658b984e3b35";
    hash = "sha256-NfcjXK3AjYm/FVi/0BSBH26yBc+vmumOz3tCfDnjGiA=";
    name = "ros2-rmw_gurumdds-c982e8624c2409cb84533e7c831c658b984e3b35";
  });
in
{
  gurumdds_cmake_module = pkg "sha256-YtLqsUavDWyu98xElRarXidM2IchuMmz/PZV1TxUsU8=" "gurumdds_cmake_module";
  rmw_gurumdds_cpp = pkg "sha256-dIwY/Y7XLDwZ6AAPEDUuZSaceFAnPOURA8a1vAx8qqk=" "rmw_gurumdds_cpp";
}
