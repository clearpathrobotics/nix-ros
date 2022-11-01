{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ROBOTIS-GIT";
    repo = "dynamixel-workbench-msgs";
    rev = "07c6a66b75ec57c6c60a946859d976d1184ebc5f";
    hash = "sha256-VIpdwDXN/ciTnSaxepTJj8HPidDTncA4RbD+dwJ9yjU=";
    name = "ROBOTIS-GIT-dynamixel-workbench-msgs-07c6a66b75ec57c6c60a946859d976d1184ebc5f";
  });
in
{
  dynamixel_workbench_msgs = pkg "sha256-NMrVMFxbUmSDCdSRTO6gRJtKsmEeqY4Q5FqkBQCeY3I=" "dynamixel_workbench_msgs";
}
