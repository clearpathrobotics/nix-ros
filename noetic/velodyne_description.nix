{
  catkin,
  urdf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "velodyne_description";
  pkgFinal = final.noetic.velodyne_description;
  src = srcs.velodyne_simulator.velodyne_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    urdf
    xacro
  ];

  colconTestDepends = [
  ];
}
