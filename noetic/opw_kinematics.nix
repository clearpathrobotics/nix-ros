{
  cmake,
  eigen,
  gtest,
  ros_industrial_cmake_boilerplate,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "opw_kinematics";
  pkgFinal = final.noetic.opw_kinematics;
  src = srcs.opw_kinematics.opw_kinematics;

  colconBuildDepends = [
    cmake
    eigen
    ros_industrial_cmake_boilerplate
  ];

  colconRunDepends = [
    eigen
  ];

  colconTestDepends = [
    gtest
  ];
}
