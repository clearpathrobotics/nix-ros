{
  catkin,
  control_msgs,
  industrial_msgs,
  industrial_robot_client,
  python3Packages,
  roslaunch,
  rospy,
  sensor_msgs,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "industrial_robot_simulator";
  pkgFinal = final.noetic.industrial_robot_simulator;
  src = srcs.industrial_core.industrial_robot_simulator;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    control_msgs
    industrial_msgs
    industrial_robot_client
    python3Packages.rospkg
    rospy
    sensor_msgs
    trajectory_msgs
  ];

  colconTestDepends = [
    roslaunch
  ];
}
