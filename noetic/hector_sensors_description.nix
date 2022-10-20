{
  catkin,
  hector_gazebo_thermal_camera,
  tf,
  tf2_ros,
  velodyne_gazebo_plugins,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_sensors_description";
  pkgFinal = final.noetic.hector_sensors_description;
  src = srcs.hector_models.hector_sensors_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    hector_gazebo_thermal_camera
    tf
    tf2_ros
    velodyne_gazebo_plugins
    xacro
  ];

  colconTestDepends = [
  ];
}
