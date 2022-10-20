{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-controls";
    repo = "ros2_control";
    rev = "8559be7721292375baae03f329dc8cc9ba79be77";
    hash = "sha256-rR+KLxyRFfQ4kAk7fbrglcW5ONu/FAv1rMShrtQdR3U=";
    name = "ros-controls-ros2_control-8559be7721292375baae03f329dc8cc9ba79be77";
  });
in
{
  controller_interface = pkg "sha256-T55enecIVnQCieX0u5Ec43P80XDVoKgrLim2sPa9xwM=" "controller_interface";
  controller_manager = pkg "sha256-02LmkmqXlZL/5/0RQZgf2iBpnNCsmwkooEFakUS3JI4=" "controller_manager";
  controller_manager_msgs = pkg "sha256-5/UNiTOOzPjBhAJbGNhSZpuAIveHK5kesiD/Ylz73v0=" "controller_manager_msgs";
  hardware_interface = pkg "sha256-UVmQ6QFvwbsNdYheoRqd2qvPChzkVEeWHKZPCSImw0U=" "hardware_interface";
  joint_limits = pkg "sha256-3zXvL6s7fr9wqfecWcKFD+b/YggKHO3X1ZkimkSmj8s=" "joint_limits";
  ros2_control = pkg "sha256-jeLi3s5lb9bfRTXXd205D3mnztODX2aJTwbEFc99Bbc=" "ros2_control";
  ros2_control_test_assets = pkg "sha256-AMfUIpF7Mu8WXNfnzegIFkktyxD5MGlfEXcW7mX4pZk=" "ros2_control_test_assets";
  ros2controlcli = pkg "sha256-VhrRVw6wd4V1DlsZR8Dm2IQDFZba79kLt8HMRpOrcu4=" "ros2controlcli";
  transmission_interface = pkg "sha256-t9wLLaAkcDCD+5k4nZiRyVN9HSVzsQKWz84aYDTqAmM=" "transmission_interface";
}
