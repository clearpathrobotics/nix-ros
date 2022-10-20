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
  name = "pointgrey_camera_description";
  pkgFinal = final.noetic.pointgrey_camera_description;
  src = srcs.pointgrey_camera_driver.pointgrey_camera_description;

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
