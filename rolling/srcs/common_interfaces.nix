{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "common_interfaces";
    rev = "2faca4bffed0abe664e676808e892569de84ad7d";
    hash = "sha256-jHAbqo75g6Kr/+WoAq3u1DWBNlZxzfpYXxjAfFQEiEY=";
    name = "ros2-common_interfaces-2faca4bffed0abe664e676808e892569de84ad7d";
  });
in
{
  actionlib_msgs = pkg "sha256-R6zP8CW/+mkq7iZHxTpWR2u3js0uOXPbBi5kZc1f/iw=" "actionlib_msgs";
  common_interfaces = pkg "sha256-IIPyFmqnwbqQKNzFE313Sz8UmWuWX0x/4YCXEKRXHGw=" "common_interfaces";
  diagnostic_msgs = pkg "sha256-HIqoUczrN7wQHNtbIGmNNot97jhFPNZ+stBuuRc9Bbk=" "diagnostic_msgs";
  geometry_msgs = pkg "sha256-/BIR3mL8rusa+kXmVbeMaxLXys9d8Ct90Gf283fBLog=" "geometry_msgs";
  nav_msgs = pkg "sha256-7a/8o3hMMSUiD3mqdwc8RbKukNv6fNNNFoz1Yh0+p+4=" "nav_msgs";
  sensor_msgs = pkg "sha256-nCvUYGsPN/ZPy2+QaUTGvjIrpqxuNqBkIHi5R9bWC6k=" "sensor_msgs";
  sensor_msgs_py = pkg "sha256-YvxulMfrX7Rxt5+r/7oHx+qHj/X64BxKezmvpJf6R0A=" "sensor_msgs_py";
  shape_msgs = pkg "sha256-Y+BrWRB0LNwi98Y1jou2BKDrHLk6kUgdOv8ORnsqLpM=" "shape_msgs";
  std_msgs = pkg "sha256-Uus9vfTMgtvyeW1zJjdXiylbFjiv7zy3iD7oCji9eGU=" "std_msgs";
  std_srvs = pkg "sha256-UQluLpSi7C1EDQMJGbiRl9lJDeMyCaaBbhrkNz9cTO8=" "std_srvs";
  stereo_msgs = pkg "sha256-ftUCnMg8yZ7wNH8CThLxz8p7g1kFnnI6sE239u7rA5E=" "stereo_msgs";
  trajectory_msgs = pkg "sha256-cyR7UimJ1ax6nBrgC1yBWupKrmcHMrDZtniqbvJ42bA=" "trajectory_msgs";
  visualization_msgs = pkg "sha256-pvHDu7YMCEuF5OGQOBNV949rIbSggp0Kwwqwe5zFdEo=" "visualization_msgs";
}
