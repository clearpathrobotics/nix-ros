{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "Kawasaki-Robotics";
    repo = "khi_robot";
    rev = "6a0665a482793356f68cb51a4b92ba8f6fa776ad";
    hash = "sha256-gKVj5RhIcE8FjNfRXX0KXvSAdW/jiOX6FmdZVw/RkHQ=";
    name = "Kawasaki-Robotics-khi_robot-6a0665a482793356f68cb51a4b92ba8f6fa776ad";
  });
in
{
  khi_duaro_description = pkg "sha256-SI44DxF0iR2QLWMYIP3exN6t/BVbOcd0wgTEMFM4n0k=" "khi_duaro_description";
  khi_duaro_gazebo = pkg "sha256-v4vGgdjS8WD4hJOYyzAuj/sHIAVkbfbqpwVFUQdAumw=" "khi_duaro_gazebo";
  khi_duaro_ikfast_plugin = pkg "sha256-VoTn3ujaq3vuKx6C9JFp70whb6HgyOsTsxZVelcU9fU=" "khi_duaro_ikfast_plugin";
  khi_duaro_moveit_config = pkg "sha256-36QIfyvcvU3cieZsiahpdj0vBYPrCESbGH7tGHSPq/Y=" "khi_duaro_moveit_config";
  khi_robot = pkg "sha256-4g0z8mo54SLyYafdAFvWfQE+/ls3uRBxrAWqA28UD88=" "khi_robot";
  khi_robot_bringup = pkg "sha256-xeBv14O6Na53LO1YX+oEcO+hEKSZQVkVCIqLAJfDpFs=" "khi_robot_bringup";
  khi_robot_control = pkg "sha256-1ztNOZnelBrOKCalYcjHp5QW4PkWiJLHTYfTk8MFzqc=" "khi_robot_control";
  khi_robot_msgs = pkg "sha256-9IoEYS7oAV78YOhN5bHWMFhl3KFZQM5auMTuMZJ0R84=" "khi_robot_msgs";
  khi_robot_test = pkg "sha256-bKe6WjjyEtcuXuOk4juZg+YGaYRuurM9XW55zF9z+5I=" "khi_robot_test";
  khi_rs007l_moveit_config = pkg "sha256-gEFYKMhTbaQIaDk1u5X+8LRFzlC1aPcwAM1v1PixjOI=" "khi_rs007l_moveit_config";
  khi_rs007n_moveit_config = pkg "sha256-I+gQN2o5tSGzchxz+Wh3BbG/BooAzjrnoBybdvw22v4=" "khi_rs007n_moveit_config";
  khi_rs013n_moveit_config = pkg "sha256-dvrIeVpb8fbHPP9m6TRaFcSZs3M7sAA/ZEfwP+SG6VI=" "khi_rs013n_moveit_config";
  khi_rs025n_moveit_config = pkg "sha256-PkROMObAz+YdRlNBMxl7FlFftggW+bQVF0JgQejyTXs=" "khi_rs025n_moveit_config";
  khi_rs080n_moveit_config = pkg "sha256-KCNEO9DoyLGMR1bFVqwEu6HxIKCciXcUE9DJUZTEA6M=" "khi_rs080n_moveit_config";
  khi_rs_description = pkg "sha256-+mTcM8H2c1JnCSbdFKZUNTYU0ommNkpOcGtfeU/tXDc=" "khi_rs_description";
  khi_rs_gazebo = pkg "sha256-ETbzp9RaCUpW18F4iMt+XBmi3liuWRSmX2ylRlCDrbA=" "khi_rs_gazebo";
  khi_rs_ikfast_plugin = pkg "sha256-gvQszpWwb+auz2BIDNF6Nm47gRvUmBkC8p6sBOjgMdI=" "khi_rs_ikfast_plugin";
}
