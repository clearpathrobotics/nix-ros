{
  catkin,
  cob_description,
  gazebo_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_gazebo_objects";
  pkgFinal = final.noetic.cob_gazebo_objects;
  src = srcs.cob_simulation.cob_gazebo_objects;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_description
    gazebo_ros
  ];

  colconTestDepends = [
  ];
}
