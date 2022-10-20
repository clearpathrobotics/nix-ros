{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ROBOTIS-GIT";
    repo = "dynamixel-workbench";
    rev = "de6a638bc67eef67d696980317e7d8e9cff2be5a";
    hash = "sha256-xWAEKxB5gzdU3tsEhhsczhXo9KA5k2ujbWSXu2JhVRs=";
    name = "ROBOTIS-GIT-dynamixel-workbench-de6a638bc67eef67d696980317e7d8e9cff2be5a";
  });
in
{
  dynamixel_workbench = pkg "sha256-q61GkQtwb4+B5LBS7NrjpZynQj0xUDqXPR2zJXVNKH0=" "dynamixel_workbench";
  dynamixel_workbench_controllers = pkg "sha256-wvyMaEAMuAzhi7Wcbhx9ikalj8HCofwBZ5J8lYZU4Rk=" "dynamixel_workbench_controllers";
  dynamixel_workbench_operators = pkg "sha256-ep75GQ0shZjm7SBFe5tkisMwgV6OM1IspCr37QTx+4w=" "dynamixel_workbench_operators";
  dynamixel_workbench_toolbox = pkg "sha256-yxy3ytmlFLHiKLcmdhJO4dXICLdRoAqq2h/YZKuq28o=" "dynamixel_workbench_toolbox";
}
