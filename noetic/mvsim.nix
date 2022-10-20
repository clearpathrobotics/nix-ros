{
  boost,
  box2d,
  cmake,
  cppzmq,
  mrpt2,
  nav_msgs,
  protobuf,
  python3,
  python3Packages,
  ros_environment,
  sensor_msgs,
  tf2,
  tf2_geometry_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mvsim";
  pkgFinal = final.noetic.mvsim;
  src = srcs.mvsim.mvsim;

  colconBuildDepends = [
    boost
    box2d
    cmake
    cppzmq
    mrpt2
    nav_msgs
    protobuf
    python3
    python3Packages.pybind11
    ros_environment
    sensor_msgs
    tf2
    tf2_geometry_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    boost
    box2d
    cppzmq
    mrpt2
    nav_msgs
    protobuf
    python3
    python3Packages.pybind11
    sensor_msgs
    tf2
    tf2_geometry_msgs
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
