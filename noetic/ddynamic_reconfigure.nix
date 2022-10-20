{
  catkin,
  dynamic_reconfigure,
  gtest,
  roscpp,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ddynamic_reconfigure";
  pkgFinal = final.noetic.ddynamic_reconfigure;
  src = srcs.ddynamic_reconfigure.ddynamic_reconfigure;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    roscpp
  ];

  colconRunDepends = [
    dynamic_reconfigure
    roscpp
  ];

  colconTestDepends = [
    gtest
    rostest
  ];
}
