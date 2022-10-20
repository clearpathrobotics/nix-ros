{
  catkin,
  roscpp,
  roscpp_serialization,
  rostime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_type_introspection";
  pkgFinal = final.noetic.ros_type_introspection;
  src = srcs.ros_type_introspection.ros_type_introspection;

  colconBuildDepends = [
    catkin
    roscpp
    roscpp_serialization
    rostime
  ];

  colconRunDepends = [
    roscpp
    roscpp_serialization
    rostime
  ];

  colconTestDepends = [
  ];
}
