{
  ament_cmake_python,
  ament_index_python,
  launch,
  launch_ros,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "simple_launch";
  pkgFinal = final.rolling.simple_launch;
  src = srcs.simple_launch.simple_launch;

  colconBuildDepends = [
    ament_cmake_python
    ament_index_python
    launch
    launch_ros
    xacro
  ];

  colconRunDepends = [
    ament_index_python
    launch
    launch_ros
    xacro
  ];

  colconTestDepends = [
  ];
}
