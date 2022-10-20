{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-tooling";
    repo = "rosbag2_storage_mcap";
    rev = "fcd25645eade5e0bec9beae87b48019e16429830";
    hash = "sha256-AhXsaDPLyhj4rzSgVW3Waho+qDah1B1dHzLemhXpE5o=";
    name = "ros-tooling-rosbag2_storage_mcap-fcd25645eade5e0bec9beae87b48019e16429830";
  });
in
{
  mcap_vendor = pkg "sha256-Z710/3CHtxJ85N31YguojNl/LgfCABdEhwAtF7ogL+0=" "mcap_vendor";
  rosbag2_storage_mcap = pkg "sha256-L310cpieUkKvuZYEz6LSm/Z8Mu44q5w6YapVYkX680Q=" "rosbag2_storage_mcap";
  rosbag2_storage_mcap_test_fixture_interfaces = pkg "sha256-m6x66N546rRYtccZg+OvB6a7rW79bNIsrNMo9x3LF7M=" "rosbag2_storage_mcap_test_fixture_interfaces";
}
