{
  catkin,
  create_bringup,
  create_description,
  create_driver,
  create_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "create_robot";
  pkgFinal = final.noetic.create_robot;
  src = srcs.create_robot.create_robot;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    create_bringup
    create_description
    create_driver
    create_msgs
  ];

  colconTestDepends = [
  ];
}
