{
  ament_cmake,
  gazebo_ros,
  urdf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "velodyne_description";
  pkgFinal = final.rolling.velodyne_description;
  src = srcs.velodyne_simulator.velodyne_description;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    gazebo_ros
    urdf
    xacro
  ];

  colconTestDepends = [
  ];
}
