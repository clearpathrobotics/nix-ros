{
  boost,
  cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "async_comm";
  pkgFinal = final.noetic.async_comm;
  src = srcs.async_comm.async_comm;

  colconBuildDepends = [
    boost
    cmake
  ];

  colconRunDepends = [
    boost
  ];

  colconTestDepends = [
  ];
}
