{
  boost,
  catkin,
  cmake,
  git,
  gtest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ixblue_stdbin_decoder";
  pkgFinal = final.noetic.ixblue_stdbin_decoder;
  src = srcs.ixblue_stdbin_decoder.ixblue_stdbin_decoder;

  colconBuildDepends = [
    boost
    cmake
  ];

  colconRunDepends = [
    boost
    catkin
  ];

  colconTestDepends = [
    git
    gtest
  ];
}
