{
  catkin,
  warthog_msgs,
  warthog_viz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "warthog_desktop";
  pkgFinal = final.noetic.warthog_desktop;
  src = srcs.warthog_desktop.warthog_desktop;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    warthog_msgs
    warthog_viz
  ];

  colconTestDepends = [
  ];
}
