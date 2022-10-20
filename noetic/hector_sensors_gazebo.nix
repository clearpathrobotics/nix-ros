{
  catkin,
  gazebo_plugins,
  hector_gazebo_plugins,
  hector_sensors_description,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_sensors_gazebo";
  pkgFinal = final.noetic.hector_sensors_gazebo;
  src = srcs.hector_gazebo.hector_sensors_gazebo;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    gazebo_plugins
    hector_gazebo_plugins
    hector_sensors_description
  ];

  colconTestDepends = [
  ];
}
