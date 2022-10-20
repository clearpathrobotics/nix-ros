{
  catkin,
  jsk_footstep_msgs,
  jsk_gui_msgs,
  jsk_hark_msgs,
  posedetection_msgs,
  speech_recognition_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_common_msgs";
  pkgFinal = final.noetic.jsk_common_msgs;
  src = srcs.jsk_common_msgs.jsk_common_msgs;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    jsk_footstep_msgs
    jsk_gui_msgs
    jsk_hark_msgs
    posedetection_msgs
    speech_recognition_msgs
  ];

  colconTestDepends = [
  ];
}
