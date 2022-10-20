{
  catkin,
  cpp_common,
  lz4,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "roslz4";
  pkgFinal = final.noetic.roslz4;
  src = srcs.ros_comm.roslz4;

  colconBuildDepends = [
    catkin
    cpp_common
    lz4
  ];

  colconRunDepends = [
    lz4
  ];

  colconTestDepends = [
    rosunit
  ];
}
