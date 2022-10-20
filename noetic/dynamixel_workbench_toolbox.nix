{
  catkin,
  dynamixel_sdk,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dynamixel_workbench_toolbox";
  pkgFinal = final.noetic.dynamixel_workbench_toolbox;
  src = srcs.dynamixel-workbench.dynamixel_workbench_toolbox;

  colconBuildDepends = [
    catkin
    dynamixel_sdk
    roscpp
  ];

  colconRunDepends = [
    dynamixel_sdk
    roscpp
  ];

  colconTestDepends = [
  ];
}
