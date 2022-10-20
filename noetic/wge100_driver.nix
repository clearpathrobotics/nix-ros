{
  catkin,
  wge100_camera,
  wge100_camera_firmware,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "wge100_driver";
  pkgFinal = final.noetic.wge100_driver;
  src = srcs.wge100_driver.wge100_driver;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    wge100_camera
    wge100_camera_firmware
  ];

  colconTestDepends = [
  ];
}
