{
  catkin,
  gpp_interface,
  pluginlib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gpp_update_map";
  pkgFinal = final.noetic.gpp_update_map;
  src = srcs.gpp.gpp_update_map;

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
  ];
}
