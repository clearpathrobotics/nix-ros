{
  catkin,
  convex_decomposition,
  gtest,
  ivcon,
  rosbash,
  urdfdom,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_description";
  pkgFinal = final.noetic.pr2_description;
  src = srcs.pr2_common.pr2_description;

  colconBuildDepends = [
    catkin
    convex_decomposition
    ivcon
  ];

  colconRunDepends = [
    xacro
  ];

  colconTestDepends = [
    gtest
    rosbash
    urdfdom
  ];
}
