{
  catkin,
  industrial_robot_client,
  simple_message,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "abb_driver";
  pkgFinal = final.noetic.abb_driver;
  src = srcs.abb_driver.abb_driver;

  colconBuildDepends = [
    catkin
    industrial_robot_client
    simple_message
  ];

  colconRunDepends = [
    industrial_robot_client
  ];

  colconTestDepends = [
  ];
}
