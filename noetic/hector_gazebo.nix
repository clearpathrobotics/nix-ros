{
  catkin,
  hector_gazebo_plugins,
  hector_gazebo_thermal_camera,
  hector_gazebo_worlds,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_gazebo";
  pkgFinal = final.noetic.hector_gazebo;
  src = srcs.hector_gazebo.hector_gazebo;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    hector_gazebo_plugins
    hector_gazebo_thermal_camera
    hector_gazebo_worlds
  ];

  colconTestDepends = [
  ];
}
