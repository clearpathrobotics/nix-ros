{
  catkin,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_ethercat_eml";
  pkgFinal = final.noetic.ros_ethercat_eml;
  src = srcs.ros_ethercat_eml.ros_ethercat_eml;

  colconBuildDepends = [
    catkin
    roscpp
  ];

  colconRunDepends = [
    roscpp
  ];

  colconTestDepends = [
  ];
}
