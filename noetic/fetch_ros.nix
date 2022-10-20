{
  catkin,
  fetch_calibration,
  fetch_depth_layer,
  fetch_description,
  fetch_ikfast_plugin,
  fetch_maps,
  fetch_moveit_config,
  fetch_navigation,
  fetch_teleop,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fetch_ros";
  pkgFinal = final.noetic.fetch_ros;
  src = srcs.fetch_ros.fetch_ros;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    fetch_calibration
    fetch_depth_layer
    fetch_description
    fetch_ikfast_plugin
    fetch_maps
    fetch_moveit_config
    fetch_navigation
    fetch_teleop
  ];

  colconTestDepends = [
  ];
}
