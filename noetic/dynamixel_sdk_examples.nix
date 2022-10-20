{
  catkin,
  dynamixel_sdk,
  message_generation,
  message_runtime,
  roscpp,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dynamixel_sdk_examples";
  pkgFinal = final.noetic.dynamixel_sdk_examples;
  src = srcs.dynamixel_sdk.dynamixel_sdk_examples;

  colconBuildDepends = [
    catkin
    dynamixel_sdk
    message_generation
    roscpp
    std_msgs
  ];

  colconRunDepends = [
    dynamixel_sdk
    message_runtime
    roscpp
    std_msgs
  ];

  colconTestDepends = [
  ];
}
