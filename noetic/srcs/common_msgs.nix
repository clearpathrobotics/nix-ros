{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "common_msgs";
    rev = "20a833b56f9d7fd39655b8491a2ec1226d2639b3";
    hash = "sha256-5gUdWyQVzYTfrSEYcfw2MF1Jf+9xi5FZLVVTZ3Z3Vfk=";
    name = "ros-common_msgs-20a833b56f9d7fd39655b8491a2ec1226d2639b3";
  });
in
{
  actionlib_msgs = pkg "sha256-qWUeHPvyVAS0keRrP60eAJUky8Zyo6sqUNjKCSlHwNI=" "actionlib_msgs";
  common_msgs = pkg "sha256-HvNfpqwdQR3pa5AsmemiVQ8ryoo/4Zq9pW4H82Tswsk=" "common_msgs";
  diagnostic_msgs = pkg "sha256-biv7EguJNxUF4G1PlDsn9g0a0O3MnWm5mrCy8pYzbqA=" "diagnostic_msgs";
  geometry_msgs = pkg "sha256-HAvscctyubs9JETUZg8Wn/OGg2zW0xou4EXiiPpUCYw=" "geometry_msgs";
  nav_msgs = pkg "sha256-4h6OxOdmcmUCXyyEtWvansDk8HFvDgj2rs74jgX1ms4=" "nav_msgs";
  sensor_msgs = pkg "sha256-K49LddL5s/6G2jWccadDmNeqEBO0iqYLZV69azAP+FU=" "sensor_msgs";
  shape_msgs = pkg "sha256-3QwXpk3G6lgX+i636Izg3jZd/h+4xanyvi3+hWOyZ90=" "shape_msgs";
  stereo_msgs = pkg "sha256-BfbhYkxECLz1r7uKvpuEHd/m4laXgrmOIGeRyO+iDDM=" "stereo_msgs";
  trajectory_msgs = pkg "sha256-ihqSCEr/m57g2YsjZ2zGAm4lH5RbE7gXUiri17vJEpw=" "trajectory_msgs";
  visualization_msgs = pkg "sha256-pHC77YKKSGZr5ltf1aSuhMvmRU4dDnftx7R1XlfBlGA=" "visualization_msgs";
}
