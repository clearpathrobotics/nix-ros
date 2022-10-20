{
  actionlib,
  actionlib_msgs,
  catkin,
  git,
  message_generation,
  message_runtime,
  mk,
  python3Packages,
  rospy,
  rostest,
  sound_play,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rostwitter";
  pkgFinal = final.noetic.rostwitter;
  src = srcs.jsk_3rdparty.rostwitter;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    git
    message_generation
    mk
    rospy
    std_msgs
  ];

  colconRunDepends = [
    message_runtime
    python3Packages.requests
    python3Packages.requests_oauthlib
    python3Packages.simplejson
    rospy
    sound_play
    std_msgs
  ];

  colconTestDepends = [
    rostest
  ];
}
