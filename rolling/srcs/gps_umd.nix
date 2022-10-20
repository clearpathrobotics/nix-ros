{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "swri-robotics";
    repo = "gps_umd";
    rev = "72137eaef51bdfbc2224bf8b685c23bbbd50dfe2";
    hash = "sha256-mnjhpd/qCuqK+0rhStNWkA7bQnIM97+OoaTLJj9yn+I=";
    name = "swri-robotics-gps_umd-72137eaef51bdfbc2224bf8b685c23bbbd50dfe2";
  });
in
{
  gps_msgs = pkg "sha256-cpHrpGKfuFgNQ4/EagoXqfpIpIrP7zJMBbzTr1G5uJI=" "gps_msgs";
  gps_tools = pkg "sha256-rN5vqTQVECXZk0NkAsqu2ZzA1lpzgFvO2bGKItl3Ef0=" "gps_tools";
  gps_umd = pkg "sha256-Pxfv1FZznAbN+lK9n7uoMEItczKj//qS+sjed3Xte4s=" "gps_umd";
  gpsd_client = pkg "sha256-PuWijieLyLKf4u0Zlm59ZFH65IwGkd9OFiUhTkNRdtQ=" "gpsd_client";
}
