{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "omron";
    rev = "b1ceff72854f3f0f993bffac295ef029d20351f1";
    hash = "sha256-ueGWPSQ0REX4jNC6g7KB+I2lGV+1FpJyzs8sAlvP4NM=";
    name = "ros-drivers-omron-b1ceff72854f3f0f993bffac295ef029d20351f1";
  });
in
{
  omron_os32c_driver = pkg "sha256-DfwMCvftDBi2EfjEMqeKwu4H4XK/RGakEFyeOzCq44U=" "omron_os32c_driver";
}
