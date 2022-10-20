{
  catkin,
  rosbridge_server,
  roslaunch,
  rostest,
  roswww,
  rwt_utils_3rdparty,
  speech_recognition_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rwt_speech_recognition";
  pkgFinal = final.noetic.rwt_speech_recognition;
  src = srcs.visualization_rwt.rwt_speech_recognition;

  colconBuildDepends = [
    catkin
    rosbridge_server
    roswww
    rwt_utils_3rdparty
    speech_recognition_msgs
  ];

  colconRunDepends = [
    rosbridge_server
    roswww
    rwt_utils_3rdparty
    speech_recognition_msgs
  ];

  colconTestDepends = [
    roslaunch
    rostest
  ];
}
