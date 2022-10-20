{
  actionlib_tutorials,
  catkin,
  nodelet_tutorial_math,
  pluginlib_tutorials,
  turtle_actionlib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "common_tutorials";
  pkgFinal = final.noetic.common_tutorials;
  src = srcs.common_tutorials.common_tutorials;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    actionlib_tutorials
    nodelet_tutorial_math
    pluginlib_tutorials
    turtle_actionlib
  ];

  colconTestDepends = [
  ];
}
