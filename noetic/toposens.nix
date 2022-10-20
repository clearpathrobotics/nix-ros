{
  catkin,
  toposens_bringup,
  toposens_description,
  toposens_driver,
  toposens_echo_driver,
  toposens_markers,
  toposens_msgs,
  toposens_pointcloud,
  toposens_sync,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "toposens";
  pkgFinal = final.noetic.toposens;
  src = srcs.toposens.toposens;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    toposens_bringup
    toposens_description
    toposens_driver
    toposens_echo_driver
    toposens_markers
    toposens_msgs
    toposens_pointcloud
    toposens_sync
  ];

  colconTestDepends = [
  ];
}
