{
  catkin,
  gazebo,
  rosconsole,
  roslint,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mecanum_gazebo_plugin";
  pkgFinal = final.noetic.mecanum_gazebo_plugin;
  src = srcs.ridgeback_simulator.mecanum_gazebo_plugin;

  colconBuildDepends = [
    catkin
    gazebo
    rosconsole
    roslint
  ];

  colconRunDepends = [
    gazebo
    rosconsole
  ];

  colconTestDepends = [
  ];
}
