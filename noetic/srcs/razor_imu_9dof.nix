{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ENSTABretagneRobotics";
    repo = "razor_imu_9dof";
    rev = "b25b43e8244d30122bbae4f4771568d2f4f47be4";
    hash = "sha256-JQtQkPjI6f0s0yBv8sHJgUxXDNpaU/86abN4nzZo+CU=";
    name = "ENSTABretagneRobotics-razor_imu_9dof-b25b43e8244d30122bbae4f4771568d2f4f47be4";
  });
in
{
  razor_imu_9dof = pkg "sha256-JQtQkPjI6f0s0yBv8sHJgUxXDNpaU/86abN4nzZo+CU=" ".";
}
