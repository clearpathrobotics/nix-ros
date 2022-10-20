{
  catkin,
  z_laser_gui,
  z_laser_msgs,
  z_laser_viz,
  z_laser_zlp1,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "z_laser_projector";
  pkgFinal = final.noetic.z_laser_projector;
  src = srcs.z_laser_projector.z_laser_projector;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    z_laser_gui
    z_laser_msgs
    z_laser_viz
    z_laser_zlp1
  ];

  colconTestDepends = [
  ];
}
