{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "fictionlab";
    repo = "pincher_arm";
    rev = "8c1f6fbdd7b9995ad57ba652f95ce8ad97d7b382";
    hash = "sha256-ikzH8Cr2lU3eavVx1aKhcJ1JKtgnXNQNrIPChYSsFGs=";
    name = "fictionlab-pincher_arm-8c1f6fbdd7b9995ad57ba652f95ce8ad97d7b382";
  });
in
{
  pincher_arm = pkg "sha256-M13EHfXPoBG75tR50Toawzt+D7tWgtHGc6BVES08HFU=" "pincher_arm";
  pincher_arm_bringup = pkg "sha256-eFpmmfRgmkJrH2Sik9lRKqmpAhFwoHgGHkN2bJ90JE8=" "pincher_arm_bringup";
  pincher_arm_description = pkg "sha256-MdQyDNZzz9WikKS6YvpI9vKT7HJGccuKspkTzQNJ8J8=" "pincher_arm_description";
  pincher_arm_ikfast_plugin = pkg "sha256-YPMdLXfqe3HujZW+F5ShqGpKCv7F0zD+6VrVn+Uz9Rc=" "pincher_arm_ikfast_plugin";
  pincher_arm_moveit_config = pkg "sha256-QIXYMNcL/cZ4whjCE18pFf4tWDVLle1EuXEqQmvuPEM=" "pincher_arm_moveit_config";
  pincher_arm_moveit_demos = pkg "sha256-+pmwb0EqJTb2bQ6M/HmLmQWdJ61qq2y5s2T6big7ix0=" "pincher_arm_moveit_demos";
}
