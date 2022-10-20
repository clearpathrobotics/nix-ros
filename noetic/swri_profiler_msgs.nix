{
  catkin,
  message_generation,
  message_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_profiler_msgs";
  pkgFinal = final.noetic.swri_profiler_msgs;
  src = srcs.swri_profiler.swri_profiler_msgs;

  colconBuildDepends = [
    catkin
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    message_runtime
  ];

  colconTestDepends = [
  ];
}
