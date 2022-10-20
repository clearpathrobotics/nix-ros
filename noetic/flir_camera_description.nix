{
  catkin,
  robot_state_publisher,
  urdf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "flir_camera_description";
  pkgFinal = final.noetic.flir_camera_description;
  src = srcs.flir_camera_driver.flir_camera_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    robot_state_publisher
    urdf
    xacro
  ];

  colconTestDepends = [
  ];
}
