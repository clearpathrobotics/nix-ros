{
  catkin,
  gpp_interface,
  pluginlib,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gpp_prune_path";
  pkgFinal = final.noetic.gpp_prune_path;
  src = srcs.gpp.gpp_prune_path;

  colconBuildDepends = [
    catkin
    gpp_interface
    pluginlib
  ];

  colconRunDepends = [
    gpp_interface
    pluginlib
  ];

  colconTestDepends = [
    rostest
  ];
}
