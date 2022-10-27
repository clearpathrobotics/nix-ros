{
  git,
  ros_environment,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "osqp_vendor";
  pkgFinal = final.rolling.osqp_vendor;
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
