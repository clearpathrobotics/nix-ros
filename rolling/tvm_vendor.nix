{
  git,
  libxml2,
  openblas,
  ros_environment,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tvm_vendor";
  pkgFinal = final.rolling.tvm_vendor;
  src = srcs.tvm_vendor.tvm_vendor;

  colconBuildDepends = [
    git
    libxml2
    openblas
    ros_environment
  ];

  colconRunDepends = [
    git
    libxml2
    openblas
  ];

  colconTestDepends = [
  ];
}
