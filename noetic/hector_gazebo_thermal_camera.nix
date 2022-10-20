{
  catkin,
  gazebo,
  gazebo_plugins,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_gazebo_thermal_camera";
  pkgFinal = final.noetic.hector_gazebo_thermal_camera;
  src = srcs.hector_gazebo.hector_gazebo_thermal_camera;

  colconBuildDepends = [
    catkin
    gazebo_plugins
    roscpp
  ];

  colconRunDepends = [
    gazebo
    gazebo_plugins
    roscpp
  ];

  colconTestDepends = [
  ];
}
