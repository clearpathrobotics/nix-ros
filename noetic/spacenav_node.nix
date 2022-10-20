{
  catkin,
  geometry_msgs,
  libspnav,
  roscpp,
  roslint,
  sensor_msgs,
  xorg,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "spacenav_node";
  pkgFinal = final.noetic.spacenav_node;
  src = srcs.joystick_drivers.spacenav_node;

  colconBuildDepends = [
    catkin
    geometry_msgs
    libspnav
    roscpp
    roslint
    sensor_msgs
    xorg.libX11
  ];

  colconRunDepends = [
    geometry_msgs
    libspnav
    roscpp
    sensor_msgs
    xorg.libX11
  ];

  colconTestDepends = [
  ];
}
