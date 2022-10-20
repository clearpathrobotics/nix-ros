{
  angles,
  boost_sml,
  catkin,
  control_msgs,
  control_toolbox,
  controller_interface,
  controller_manager,
  eigen_conversions,
  franka_example_controllers,
  franka_gripper,
  franka_hw,
  franka_msgs,
  gazebo_dev,
  gazebo_ros,
  gazebo_ros_control,
  geometry_msgs,
  gtest,
  hardware_interface,
  joint_limits_interface,
  kdl_parser,
  pluginlib,
  roscpp,
  roslaunch,
  rospy,
  rostest,
  sensor_msgs,
  std_msgs,
  transmission_interface,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "franka_gazebo";
  pkgFinal = final.noetic.franka_gazebo;
  src = srcs.franka_ros.franka_gazebo;

  colconBuildDepends = [
    angles
    boost_sml
    catkin
    control_msgs
    control_toolbox
    controller_interface
    controller_manager
    eigen_conversions
    franka_example_controllers
    franka_gripper
    franka_hw
    franka_msgs
    gazebo_dev
    gazebo_ros_control
    hardware_interface
    joint_limits_interface
    kdl_parser
    pluginlib
    roscpp
    std_msgs
    transmission_interface
    urdf
  ];

  colconRunDepends = [
    angles
    boost_sml
    control_msgs
    control_toolbox
    controller_interface
    controller_manager
    eigen_conversions
    franka_example_controllers
    franka_gripper
    franka_hw
    franka_msgs
    gazebo_ros
    gazebo_ros_control
    hardware_interface
    joint_limits_interface
    kdl_parser
    pluginlib
    roscpp
    roslaunch
    rospy
    std_msgs
    transmission_interface
    urdf
  ];

  colconTestDepends = [
    geometry_msgs
    gtest
    rostest
    sensor_msgs
  ];
}
