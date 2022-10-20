{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-tooling";
    repo = "rosbag2_storage_mcap";
    rev = "295ae9bac733bdf7c201f0f837d937b3f7994624";
    hash = "sha256-WLlcnQ9nrJ9L+1QIPcESxFURK/Y75VBoGS8+G7QdwKY=";
    name = "ros-tooling-rosbag2_storage_mcap-295ae9bac733bdf7c201f0f837d937b3f7994624";
  });
in
{
  mcap_vendor = pkg "sha256-7nUGazS3bWTabKWoQn0V6v00bBWlMSIFfNdI/fRQ3P8=" "mcap_vendor";
  rosbag2_storage_mcap = pkg "sha256-2OVp3OhoQy8fbWVhPi/bn9/Cci03AUKIOIw4xpczcV4=" "rosbag2_storage_mcap";
  rosbag2_storage_mcap_test_fixture_interfaces = pkg "sha256-m6x66N546rRYtccZg+OvB6a7rW79bNIsrNMo9x3LF7M=" "rosbag2_storage_mcap_test_fixture_interfaces";
}
