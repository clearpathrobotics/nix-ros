{
  catkin,
  rm_common,
  rm_dbus,
  rm_description,
  rm_hw,
  rm_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rm_control";
  pkgFinal = final.noetic.rm_control;
  src = srcs.rm_control.rm_control;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    rm_common
    rm_dbus
    rm_description
    rm_hw
    rm_msgs
  ];

  colconTestDepends = [
  ];
}
