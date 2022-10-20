{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "test_interface_files";
    rev = "ea7396b2c6d577f4ac9b4f856f3e7ef55e290348";
    hash = "sha256-3AU/i9QT2B3zKuYX9lWB57Dl5S8yvThPmGZtZnV0oSY=";
    name = "ros2-test_interface_files-ea7396b2c6d577f4ac9b4f856f3e7ef55e290348";
  });
in
{
  test_interface_files = pkg "sha256-3AU/i9QT2B3zKuYX9lWB57Dl5S8yvThPmGZtZnV0oSY=" ".";
}
