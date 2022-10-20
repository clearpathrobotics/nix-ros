{
  boost,
  cppzmq,
  ncurses,
  ros_environment,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "behaviortree_cpp_v3";
  pkgFinal = final.rolling.behaviortree_cpp_v3;
  src = srcs.behaviortree_cpp.behaviortree_cpp_v3;

  colconBuildDepends = [
    boost
    cppzmq
    ncurses
    ros_environment
  ];

  colconRunDepends = [
    boost
    cppzmq
    ncurses
  ];

  colconTestDepends = [
  ];
}
