{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-simulation";
    repo = "gazebo_ros2_control";
    rev = "f64e56af4800120150460ffba15cd73db511521c";
    hash = "sha256-Z1DU+3P36yUctXRA0eQWhDRwOcxKvCBJQ8zzCS60Er4=";
    name = "ros-simulation-gazebo_ros2_control-f64e56af4800120150460ffba15cd73db511521c";
  });
in
{
  gazebo_ros2_control = pkg "sha256-QcCsiHm+ry6CUyqqThrWAy+dGovm4f/ZEthQaBUt5/I=" "gazebo_ros2_control";
  gazebo_ros2_control_demos = pkg "sha256-E9QT2gatgBbDFSRiTbPFZFA4gmQ17NMyv1AQGMWwvtI=" "gazebo_ros2_control_demos";
}
