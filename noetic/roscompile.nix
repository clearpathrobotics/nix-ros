{
  catkin,
  geometry_msgs,
  pluginlib,
  pluginlib_tutorials,
  python3Packages,
  ros_introspection,
  roslint,
  rviz_plugin_tutorials,
  stereo_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "roscompile";
  pkgFinal = final.noetic.roscompile;
  src = srcs.roscompile.roscompile;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
    ros_introspection
  ];

  colconRunDepends = [
    catkin
    python3Packages.click
    python3Packages.pyyaml
    python3Packages.rospkg
    ros_introspection
  ];

  colconTestDepends = [
    geometry_msgs
    pluginlib
    pluginlib_tutorials
    roslint
    rviz_plugin_tutorials
    stereo_msgs
    tf
  ];
}
