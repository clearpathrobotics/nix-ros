{
  catkin,
  cmake,
  readline,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ypspur";
  pkgFinal = final.noetic.ypspur;
  src = srcs.yp-spur.ypspur;

  colconBuildDepends = [
    cmake
    readline
  ];

  colconRunDepends = [
    catkin
    readline
  ];

  colconTestDepends = [
  ];
}
