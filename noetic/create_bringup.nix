{
  catkin,
  create_description,
  create_driver,
  joy,
  joy_teleop,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "create_bringup";
  pkgFinal = final.noetic.create_bringup;
  src = srcs.create_robot.create_bringup;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    create_description
    create_driver
    joy
    joy_teleop
  ];

  colconTestDepends = [
  ];
}
