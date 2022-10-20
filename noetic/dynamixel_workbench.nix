{
  catkin,
  dynamixel_workbench_controllers,
  dynamixel_workbench_operators,
  dynamixel_workbench_toolbox,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dynamixel_workbench";
  pkgFinal = final.noetic.dynamixel_workbench;
  src = srcs.dynamixel-workbench.dynamixel_workbench;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    dynamixel_workbench_controllers
    dynamixel_workbench_operators
    dynamixel_workbench_toolbox
  ];

  colconTestDepends = [
  ];
}
