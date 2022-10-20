{
  catkin,
  qt5,
  roscpp,
  std_msgs,
  swri_profiler_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_profiler_tools";
  pkgFinal = final.noetic.swri_profiler_tools;
  src = srcs.swri_profiler.swri_profiler_tools;

  colconBuildDepends = [
    catkin
    qt5.qtbase
    roscpp
    std_msgs
    swri_profiler_msgs
  ];

  colconRunDepends = [
    qt5.qtbase
    roscpp
    std_msgs
    swri_profiler_msgs
  ];

  colconTestDepends = [
  ];
}
