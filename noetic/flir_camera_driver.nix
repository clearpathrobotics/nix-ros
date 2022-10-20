{
  catkin,
  flir_camera_description,
  spinnaker_camera_driver,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "flir_camera_driver";
  pkgFinal = final.noetic.flir_camera_driver;
  src = srcs.flir_camera_driver.flir_camera_driver;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    flir_camera_description
    spinnaker_camera_driver
  ];

  colconTestDepends = [
  ];
}
