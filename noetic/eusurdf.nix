{
  catkin,
  collada_urdf_jsk_patch,
  gazebo_ros,
  python3Packages,
  roseus,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "eusurdf";
  pkgFinal = final.noetic.eusurdf;
  src = srcs.jsk_model_tools.eusurdf;

  colconBuildDepends = [
    catkin
    collada_urdf_jsk_patch
    gazebo_ros
    python3Packages.lxml
    roseus
    rostest
  ];

  colconRunDepends = [
    collada_urdf_jsk_patch
    gazebo_ros
    python3Packages.lxml
    rostest
  ];

  colconTestDepends = [
  ];
}
