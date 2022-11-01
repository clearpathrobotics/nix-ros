{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rclcpp";
    rev = "edbfe1404b24d0bc85ff88e8ff1f006670788e46";
    hash = "sha256-67VC5bhykYEm99n/t85uKWjxTVTziBKG1muMkeDH64E=";
    name = "ros2-rclcpp-edbfe1404b24d0bc85ff88e8ff1f006670788e46";
  });
in
{
  rclcpp = pkg "sha256-u2zkb3Dc4umUcZEphWFaNHvrPcwbwdyByq1rY4jZngA=" "rclcpp";
  rclcpp_action = pkg "sha256-07e+HNZrc6RicI6Xh/6UggiW5luDd2qwTWFQ6/6rR8E=" "rclcpp_action";
  rclcpp_components = pkg "sha256-7GE/yvs3KfUPnoIczq/ZP8FeequLDZKkE0p4u+jiAmg=" "rclcpp_components";
  rclcpp_lifecycle = pkg "sha256-2vQ5kH/JJNqj+ijZ6YiJ7X7BO7K/GNCYDLtYPBiIN/I=" "rclcpp_lifecycle";
}
