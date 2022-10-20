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
  name = "behaviortree_cpp";
  pkgFinal = final.rolling.behaviortree_cpp;
  src = srcs.behaviortree_cpp.behaviortree_cpp;

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
