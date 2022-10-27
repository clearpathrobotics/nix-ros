{
  git,
  ros_environment,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "osqp_vendor";
  pkgFinal = final.noetic.osqp_vendor;
  src = srcs.osqp_vendor.osqp_vendor;

  colconBuildDepends = [
    git
    ros_environment
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
