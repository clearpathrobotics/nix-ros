{
  catkin,
  message_generation,
  message_runtime,
  pkg-config,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbuild";
  pkgFinal = final.noetic.rosbuild;
  src = srcs.ros.rosbuild;

  colconBuildDepends = [
    catkin
    pkg-config
  ];

  colconRunDepends = [
    catkin
    message_generation
    message_runtime
  ];

  colconTestDepends = [
  ];
}
