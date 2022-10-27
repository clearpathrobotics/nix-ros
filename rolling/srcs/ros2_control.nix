{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-controls";
    repo = "ros2_control";
    rev = "fed74a9053ebc5d509629fa15fa54cba40566986";
    hash = "sha256-nm91X23CYFbTuOhn98D7Ab2U2Zjn0D4uw8anStwaA6w=";
    name = "ros-controls-ros2_control-fed74a9053ebc5d509629fa15fa54cba40566986";
  });
in
{
  controller_interface = pkg "sha256-T55enecIVnQCieX0u5Ec43P80XDVoKgrLim2sPa9xwM=" "controller_interface";
  controller_manager = pkg "sha256-hpTD0jF744KKSVb3XQ9uvlGkcahATYakdD5HqfDkPOU=" "controller_manager";
  controller_manager_msgs = pkg "sha256-5/UNiTOOzPjBhAJbGNhSZpuAIveHK5kesiD/Ylz73v0=" "controller_manager_msgs";
  hardware_interface = pkg "sha256-bc7S7RM8cgdTSNq9BlTo6q5b8Svhcbrahy+xKp8UYII=" "hardware_interface";
  joint_limits = pkg "sha256-3zXvL6s7fr9wqfecWcKFD+b/YggKHO3X1ZkimkSmj8s=" "joint_limits";
  ros2_control = pkg "sha256-jeLi3s5lb9bfRTXXd205D3mnztODX2aJTwbEFc99Bbc=" "ros2_control";
  ros2_control_test_assets = pkg "sha256-AMfUIpF7Mu8WXNfnzegIFkktyxD5MGlfEXcW7mX4pZk=" "ros2_control_test_assets";
  ros2controlcli = pkg "sha256-VhrRVw6wd4V1DlsZR8Dm2IQDFZba79kLt8HMRpOrcu4=" "ros2controlcli";
  transmission_interface = pkg "sha256-t9wLLaAkcDCD+5k4nZiRyVN9HSVzsQKWz84aYDTqAmM=" "transmission_interface";
}
