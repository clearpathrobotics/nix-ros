{
  catkin,
  gforth,
  rospy,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "wge100_camera_firmware";
  pkgFinal = final.noetic.wge100_camera_firmware;
  src = srcs.wge100_driver.wge100_camera_firmware;

  colconBuildDepends = [
    catkin
    gforth
    rospy
  ];

  colconRunDepends = [
    gforth
    rospy
  ];

  colconTestDepends = [
    rostest
  ];
}
