{
  catkin,
  ensenso_camera,
  ensenso_camera_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ensenso_driver";
  pkgFinal = final.noetic.ensenso_driver;
  src = srcs.ensenso_driver.ensenso_driver;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    ensenso_camera
    ensenso_camera_msgs
  ];

  colconTestDepends = [
  ];
}
