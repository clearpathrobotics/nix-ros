{
  catkin,
  cv_bridge,
  fltk,
  message_generation,
  message_runtime,
  roscpp,
  sensor_msgs,
  std_msgs,
  wxGTK,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cmvision";
  pkgFinal = final.noetic.cmvision;
  src = srcs.cmvision.cmvision;

  colconBuildDepends = [
    catkin
    cv_bridge
    fltk
    message_generation
    roscpp
    sensor_msgs
    std_msgs
    wxGTK
  ];

  colconRunDepends = [
    cv_bridge
    fltk
    message_runtime
    roscpp
    sensor_msgs
    std_msgs
    wxGTK
  ];

  colconTestDepends = [
  ];
}
