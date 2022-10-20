{
  catkin,
  diagnostic_msgs,
  pr2_mechanism_controllers,
  rospy,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "imu_monitor";
  pkgFinal = final.noetic.imu_monitor;
  src = srcs.pr2_robot.imu_monitor;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    diagnostic_msgs
    pr2_mechanism_controllers
    rospy
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
