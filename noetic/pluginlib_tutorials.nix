{
  catkin,
  pluginlib,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pluginlib_tutorials";
  pkgFinal = final.noetic.pluginlib_tutorials;
  src = srcs.common_tutorials.pluginlib_tutorials;

  colconBuildDepends = [
    catkin
    pluginlib
    roscpp
  ];

  colconRunDepends = [
    pluginlib
    roscpp
  ];

  colconTestDepends = [
  ];
}
