{
  catkin,
  teleop_twist_keyboard,
  tf2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mrpt_tutorials";
  pkgFinal = final.noetic.mrpt_tutorials;
  src = srcs.mrpt_navigation.mrpt_tutorials;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    teleop_twist_keyboard
    tf2
  ];

  colconTestDepends = [
  ];
}
