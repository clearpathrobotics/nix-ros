{
  angles,
  catkin,
  common_tutorials,
  geometry_tutorials,
  joint_state_publisher_gui,
  robot,
  ros_tutorials,
  roslint,
  urdf_tutorial,
  visualization_tutorials,
  viz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "desktop";
  pkgFinal = final.noetic.desktop;
  src = srcs.metapackages.desktop;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    angles
    common_tutorials
    geometry_tutorials
    joint_state_publisher_gui
    robot
    ros_tutorials
    roslint
    urdf_tutorial
    visualization_tutorials
    viz
  ];

  colconTestDepends = [
  ];
}
