{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tu-darmstadt-ros-pkg";
    repo = "hector_slam";
    rev = "b7d19bfee3c2848d611e8da142445b896790d7fb";
    hash = "sha256-oHyaRtYiivpbywYb6muaFiyIL0bd1okl1tMIAFz9MCE=";
    name = "tu-darmstadt-ros-pkg-hector_slam-b7d19bfee3c2848d611e8da142445b896790d7fb";
  });
in
{
  hector_compressed_map_transport = pkg "sha256-mrIO22M/bPwDW/opU8KKXPq+TR5/+o9nBGNFFxUqI6A=" "hector_compressed_map_transport";
  hector_geotiff = pkg "sha256-jl7NL6ih5I4U9v3RXKXDhwbb/0UQQmaX9+rfBF1leUI=" "hector_geotiff";
  hector_geotiff_launch = pkg "sha256-VssSobVIbY4BnIYyq5RU+MsLy8dBMOuR+KYhItdsBEw=" "hector_geotiff_launch";
  hector_geotiff_plugins = pkg "sha256-XF1QBO/1yLGNIcYlNJtDP2x5U93r70va2tnd012wpHc=" "hector_geotiff_plugins";
  hector_imu_attitude_to_tf = pkg "sha256-KpUpSqxix5PktXCW5nb7FSW4+PVD4WWmB1a8FxDglM0=" "hector_imu_attitude_to_tf";
  hector_imu_tools = pkg "sha256-IqBKZ3ufiPbJRP6p3Zg3e+7xvw+M3DYUrqsP2WgFqWk=" "hector_imu_tools";
  hector_map_server = pkg "sha256-enKeqBBc6fo7xxbTm5ZQHQSkj3E2pj6yr4yFkoxcnYA=" "hector_map_server";
  hector_map_tools = pkg "sha256-ADc3aWzWWiZ23uscQp56GfTYQBBAkFkj8dOAAY3Hu5U=" "hector_map_tools";
  hector_mapping = pkg "sha256-iuqiN01q6U2ha2SbSY7vOF6HyiQQ8XrAIp0riqCJJa8=" "hector_mapping";
  hector_marker_drawing = pkg "sha256-358M5wUeJRjtRHaustqueuFFSFjmPHBQYIlOteoaq+Q=" "hector_marker_drawing";
  hector_nav_msgs = pkg "sha256-vc5uhc6FhQv28vU5PQM4IsUNXV5S44J0y7KLVVvZ1p8=" "hector_nav_msgs";
  hector_slam = pkg "sha256-2swqvyx4/AmmzdAbLPfLXHtmBTvSfpMddjerK+y+1NE=" "hector_slam";
  hector_slam_launch = pkg "sha256-lf95pax61Wbe7ju2yV21uNp5MeBOuXqhiuT38UmhLuo=" "hector_slam_launch";
  hector_trajectory_server = pkg "sha256-rRM5FTWC+OC7MdOC/FYeaf82IajgSle/AiDHzzCE9Xk=" "hector_trajectory_server";
}
