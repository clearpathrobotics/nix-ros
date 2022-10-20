{
  catkin,
  ros_base,
  rqt_common_plugins,
  rqt_robot_plugins,
  rviz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "viz";
  pkgFinal = final.noetic.viz;
  src = srcs.metapackages.viz;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    ros_base
    rqt_common_plugins
    rqt_robot_plugins
    rviz
  ];

  colconTestDepends = [
  ];
}
