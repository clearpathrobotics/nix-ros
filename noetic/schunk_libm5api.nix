{
  catkin,
  libntcan,
  libpcan,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "schunk_libm5api";
  pkgFinal = final.noetic.schunk_libm5api;
  src = srcs.schunk_modular_robotics.schunk_libm5api;

  colconBuildDepends = [
    catkin
    libntcan
    libpcan
  ];

  colconRunDepends = [
    libntcan
    libpcan
  ];

  colconTestDepends = [
  ];
}
