{
  SDL_image,
  catkin,
  jsk_tools,
  libyamlcpp,
  map_server,
  nav_msgs,
  python3Packages,
  pythonPackages,
  rosconsole,
  roscpp,
  rosmake,
  rospy,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "multi_map_server";
  pkgFinal = final.noetic.multi_map_server;
  src = srcs.jsk_common.multi_map_server;

  colconBuildDepends = [
    SDL_image
    catkin
    jsk_tools
    libyamlcpp
    map_server
    nav_msgs
    python3Packages.pyyaml
    pythonPackages.pillow
    rosconsole
    roscpp
    rosmake
    rospy
    tf
  ];

  colconRunDepends = [
    SDL_image
    libyamlcpp
    map_server
    nav_msgs
    rosconsole
    roscpp
    rospy
    tf
  ];

  colconTestDepends = [
  ];
}
