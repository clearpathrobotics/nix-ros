{
  SDL,
  SDL_image,
  bullet,
  catkin,
  libyamlcpp,
  nav_msgs,
  roscpp,
  roslib,
  rospy,
  rostest,
  rosunit,
  tf2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "map_server";
  pkgFinal = final.noetic.map_server;
  src = srcs.navigation.map_server;

  colconBuildDepends = [
    SDL
    SDL_image
    bullet
    catkin
    libyamlcpp
    nav_msgs
    roscpp
    tf2
  ];

  colconRunDepends = [
    SDL
    SDL_image
    bullet
    libyamlcpp
    nav_msgs
    roscpp
    tf2
  ];

  colconTestDepends = [
    roslib
    rospy
    rostest
    rosunit
  ];
}
