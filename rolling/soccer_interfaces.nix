{
  ament_cmake,
  soccer_vision_2d_msgs,
  soccer_vision_3d_msgs,
  soccer_vision_attribute_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "soccer_interfaces";
  pkgFinal = final.rolling.soccer_interfaces;
  src = srcs.soccer_interfaces.soccer_interfaces;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    soccer_vision_2d_msgs
    soccer_vision_3d_msgs
    soccer_vision_attribute_msgs
  ];

  colconTestDepends = [
  ];
}
