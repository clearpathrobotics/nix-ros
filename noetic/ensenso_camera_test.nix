{
  catkin,
  ensenso_camera,
  ensenso_camera_msgs,
  roslint,
  rospy,
  rostest,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ensenso_camera_test";
  pkgFinal = final.noetic.ensenso_camera_test;
  src = srcs.ensenso_driver.ensenso_camera_test;

  colconBuildDepends = [
    catkin
    ensenso_camera
    ensenso_camera_msgs
    roslint
    rospy
    rostest
    tf
  ];

  colconRunDepends = [
    ensenso_camera
    ensenso_camera_msgs
    rospy
    rostest
    tf
  ];

  colconTestDepends = [
  ];
}
