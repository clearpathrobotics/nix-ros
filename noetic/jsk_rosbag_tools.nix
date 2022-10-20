{
  audio_common_msgs,
  catkin,
  catkin_virtualenv,
  cv_bridge,
  ffmpeg,
  python3Packages,
  roslint,
  rostest,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_rosbag_tools";
  pkgFinal = final.noetic.jsk_rosbag_tools;
  src = srcs.jsk_common.jsk_rosbag_tools;

  colconBuildDepends = [
    catkin
    catkin_virtualenv
    python3Packages.catkin-pkg
  ];

  colconRunDepends = [
    audio_common_msgs
    cv_bridge
    ffmpeg
    python3Packages.numpy
    python3Packages.pyyaml
    python3Packages.rospkg
    python3Packages.scipy
    python3Packages.setuptools
    python3Packages.termcolor
    python3Packages.tqdm
    sensor_msgs
  ];

  colconTestDepends = [
    roslint
    rostest
  ];
}
