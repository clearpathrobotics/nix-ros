{
  catkin,
  rm_common,
  roscpp,
  roslint,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rm_dbus";
  pkgFinal = final.noetic.rm_dbus;
  src = srcs.rm_control.rm_dbus;

  colconBuildDepends = [
    catkin
    rm_common
    roscpp
    roslint
  ];

  colconRunDepends = [
    rm_common
    roscpp
    roslint
  ];

  colconTestDepends = [
  ];
}
