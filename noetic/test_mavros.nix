{
  angles,
  catkin,
  cmake_modules,
  control_toolbox,
  eigen,
  eigen_conversions,
  geometry_msgs,
  mavros,
  mavros_extras,
  roscpp,
  std_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_mavros";
  pkgFinal = final.noetic.test_mavros;
  src = srcs.mavros.test_mavros;

  colconBuildDepends = [
    angles
    catkin
    cmake_modules
    control_toolbox
    eigen
    eigen_conversions
    geometry_msgs
    mavros
    mavros_extras
    roscpp
    std_msgs
    tf2_ros
  ];

  colconRunDepends = [
    control_toolbox
    eigen
    eigen_conversions
    geometry_msgs
    mavros
    mavros_extras
    roscpp
    std_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
