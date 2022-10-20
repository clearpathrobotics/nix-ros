{
  bison,
  cacert,
  catkin,
  flex,
  gawk,
  python3,
  rostest,
  time,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "downward";
  pkgFinal = final.noetic.downward;
  src = srcs.jsk_3rdparty.downward;

  colconBuildDepends = [
    bison
    cacert
    catkin
    flex
    gawk
    python3
    rostest
    time
  ];

  colconRunDepends = [
    gawk
    time
  ];

  colconTestDepends = [
  ];
}
