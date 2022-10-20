{
  apr,
  boost,
  catkin,
  cpp_common,
  log4cxx,
  rosbuild,
  rostime,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosconsole";
  pkgFinal = final.noetic.rosconsole;
  src = srcs.rosconsole.rosconsole;

  colconBuildDepends = [
    apr
    boost
    catkin
    cpp_common
    log4cxx
    rostime
    rosunit
  ];

  colconRunDepends = [
    apr
    boost
    cpp_common
    log4cxx
    rosbuild
    rostime
  ];

  colconTestDepends = [
  ];
}
