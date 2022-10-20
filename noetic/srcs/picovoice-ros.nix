{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "reinzor";
    repo = "picovoice_ros";
    rev = "0dde0b9f4c73eedb678ab2f77d73720b71bf475d";
    hash = "sha256-ZXsg50R82/1EWtBhsRFLACQPS+W4EL1qIMRp2mxDX6Q=";
    name = "reinzor-picovoice_ros-0dde0b9f4c73eedb678ab2f77d73720b71bf475d";
  });
in
{
  picovoice_driver = pkg "sha256-rQFiQM22tumQa7QmALd5bjTb+dXq+xS5WhzO8RquJGc=" "picovoice_driver";
  picovoice_msgs = pkg "sha256-BHv+7kGeQRMDE5FA6/WaaOYEz13odWOSHA65R0v4bjI=" "picovoice_msgs";
}
