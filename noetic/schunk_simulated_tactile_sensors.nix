{
  catkin,
  gazebo_msgs,
  rospy,
  schunk_sdh,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "schunk_simulated_tactile_sensors";
  pkgFinal = final.noetic.schunk_simulated_tactile_sensors;
  src = srcs.schunk_modular_robotics.schunk_simulated_tactile_sensors;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    gazebo_msgs
    rospy
    schunk_sdh
  ];

  colconTestDepends = [
  ];
}
