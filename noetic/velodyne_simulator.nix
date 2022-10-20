{
  catkin,
  velodyne_description,
  velodyne_gazebo_plugins,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "velodyne_simulator";
  pkgFinal = final.noetic.velodyne_simulator;
  src = srcs.velodyne_simulator.velodyne_simulator;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    velodyne_description
    velodyne_gazebo_plugins
  ];

  colconTestDepends = [
  ];
}
