{
  ament_cmake,
  velodyne_description,
  velodyne_gazebo_plugins,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "velodyne_simulator";
  pkgFinal = final.rolling.velodyne_simulator;
  src = srcs.velodyne_simulator.velodyne_simulator;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    velodyne_description
    velodyne_gazebo_plugins
  ];

  colconTestDepends = [
  ];
}
