{
  catkin,
  rosunit,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "realsense2_description";
  pkgFinal = final.noetic.realsense2_description;
  src = srcs.realsense2_camera.realsense2_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    xacro
  ];

  colconTestDepends = [
    rosunit
  ];
}
