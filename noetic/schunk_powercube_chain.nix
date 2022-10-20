{
  catkin,
  cob_srvs,
  control_msgs,
  diagnostic_msgs,
  libntcan,
  libpcan,
  roscpp,
  schunk_libm5api,
  sensor_msgs,
  std_msgs,
  std_srvs,
  trajectory_msgs,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "schunk_powercube_chain";
  pkgFinal = final.noetic.schunk_powercube_chain;
  src = srcs.schunk_modular_robotics.schunk_powercube_chain;

  colconBuildDepends = [
    catkin
    cob_srvs
    control_msgs
    diagnostic_msgs
    libntcan
    libpcan
    roscpp
    schunk_libm5api
    sensor_msgs
    std_msgs
    std_srvs
    trajectory_msgs
    urdf
  ];

  colconRunDepends = [
    cob_srvs
    control_msgs
    diagnostic_msgs
    libntcan
    libpcan
    roscpp
    schunk_libm5api
    sensor_msgs
    std_msgs
    std_srvs
    trajectory_msgs
    urdf
  ];

  colconTestDepends = [
  ];
}
