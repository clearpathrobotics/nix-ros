{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "rst-tu-dortmund";
    repo = "mpc_local_planner";
    rev = "8a5980a7aedfc6385a2329a3f2baba8318091857";
    hash = "sha256-hWKZziXIcs+BptV2Vi2af++wsrlbGzJjBKNim5lIQ0A=";
    name = "rst-tu-dortmund-mpc_local_planner-8a5980a7aedfc6385a2329a3f2baba8318091857";
  });
in
{
  mpc_local_planner = pkg "sha256-9aYkdxJ6TW5gU2Oh4z3HFtIYWLKhkIw+Hcgnx11dM7s=" "mpc_local_planner";
  mpc_local_planner_examples = pkg "sha256-b0ah2/zKdH5K97yrriZ/Y2p+dSNrQfgD/p74fqlwT3o=" "mpc_local_planner_examples";
  mpc_local_planner_msgs = pkg "sha256-6FOcckDTHzwh756Pq/lfuT0de+nfgGD8Y+MA+VqEoDk=" "mpc_local_planner_msgs";
}
