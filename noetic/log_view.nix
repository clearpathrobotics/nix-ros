{
  catkin,
  ncurses,
  roscpp,
  xclip,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "log_view";
  pkgFinal = final.noetic.log_view;
  src = srcs.log_view.log_view;

  colconBuildDepends = [
    catkin
    ncurses
    roscpp
  ];

  colconRunDepends = [
    ncurses
    roscpp
    xclip
  ];

  colconTestDepends = [
  ];
}
