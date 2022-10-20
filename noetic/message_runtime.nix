{
  catkin,
  cpp_common,
  genpy,
  roscpp_serialization,
  roscpp_traits,
  rostime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "message_runtime";
  pkgFinal = final.noetic.message_runtime;
  src = srcs.message_runtime.message_runtime;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cpp_common
    genpy
    roscpp_serialization
    roscpp_traits
    rostime
  ];

  colconTestDepends = [
  ];
}
