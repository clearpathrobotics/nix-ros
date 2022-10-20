{
  catkin,
  rosdoc_lite,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jackal_tutorials";
  pkgFinal = final.noetic.jackal_tutorials;
  src = srcs.jackal.jackal_tutorials;

  colconBuildDepends = [
    catkin
    rosdoc_lite
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
