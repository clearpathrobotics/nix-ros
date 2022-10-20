{
  cmake,
  geometry_msgs,
  gtest,
  mrpt2,
  ros_environment,
  tf2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pose_cov_ops";
  pkgFinal = final.rolling.pose_cov_ops;
  src = srcs.pose_cov_ops.pose_cov_ops;

  colconBuildDepends = [
    cmake
    geometry_msgs
    mrpt2
    ros_environment
    tf2
  ];

  colconRunDepends = [
    geometry_msgs
    mrpt2
    tf2
  ];

  colconTestDepends = [
    gtest
  ];
}
