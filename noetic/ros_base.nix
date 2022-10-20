{
  actionlib,
  bond_core,
  catkin,
  dynamic_reconfigure,
  nodelet_core,
  ros_core,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_base";
  pkgFinal = final.noetic.ros_base;
  src = srcs.metapackages.ros_base;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    actionlib
    bond_core
    dynamic_reconfigure
    nodelet_core
    ros_core
  ];

  colconTestDepends = [
  ];
}
