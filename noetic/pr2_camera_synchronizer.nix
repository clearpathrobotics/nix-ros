{
  catkin,
  diagnostic_msgs,
  dynamic_reconfigure,
  ethercat_trigger_controllers,
  rospy,
  rostest,
  wge100_camera,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_camera_synchronizer";
  pkgFinal = final.noetic.pr2_camera_synchronizer;
  src = srcs.pr2_robot.pr2_camera_synchronizer;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    rostest
  ];

  colconRunDepends = [
    diagnostic_msgs
    dynamic_reconfigure
    ethercat_trigger_controllers
    rospy
    wge100_camera
  ];

  colconTestDepends = [
  ];
}
