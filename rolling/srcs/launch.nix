{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "launch";
    rev = "f51503cba9c6ef2c0a8a14c04cf34f7b65484a5f";
    hash = "sha256-JQgI8nlcwNpNuaakRole8yyzmQo+8HrrfRfy7up4oJQ=";
    name = "ros2-launch-f51503cba9c6ef2c0a8a14c04cf34f7b65484a5f";
  });
in
{
  launch = pkg "sha256-00Oo7TS4pRk/StbGI3/C1TrJR/Drbk1/TnsmY918R3A=" "launch";
  launch_pytest = pkg "sha256-jXY1i4kyhh14yy7LxqQy5A1R+U5dVd5aY5gx4ZEl1Nc=" "launch_pytest";
  launch_testing = pkg "sha256-ltd9JZQ0/fMvOMxdfKb+KD63ypiU1XLqBf7rWOK+ZDk=" "launch_testing";
  launch_testing_ament_cmake = pkg "sha256-Z8GrGCd6XQNzT2Vhew62TAsQKrnBfW6zN+wyPp1EKvw=" "launch_testing_ament_cmake";
  launch_xml = pkg "sha256-Euya7Sbk89fxEGLZmJDm1tFjXgubaCKhnh3S4GKtguc=" "launch_xml";
  launch_yaml = pkg "sha256-Y8Nt4uvocI1MXjxH/0HurLceKT3grR6jMEPaBMjm1Lg=" "launch_yaml";
  test_launch_testing = pkg "sha256-KTN/ydH4ttIEAQtU8rsSBAc8BZUyxK9Q9g2TwuelU+g=" "test_launch_testing";
}
