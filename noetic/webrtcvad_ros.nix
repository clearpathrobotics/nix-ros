{
  audio_common_msgs,
  catkin,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "webrtcvad_ros";
  pkgFinal = final.noetic.webrtcvad_ros;
  src = srcs.jsk_3rdparty.webrtcvad_ros;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    audio_common_msgs
    rospy
  ];

  colconTestDepends = [
  ];
}
