{
  catkin,
  depth_image_proc,
  dynamic_reconfigure,
  image_transport,
  jsk_topic_tools,
  message_generation,
  message_runtime,
  nodelet,
  openni_launch,
  pr2_description,
  pr2_machine,
  python3Packages,
  pythonPackages,
  rosbag,
  roslaunch,
  roslint,
  rostest,
  rqt_bag,
  rviz,
  tf2_ros,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_data";
  pkgFinal = final.noetic.jsk_data;
  src = srcs.jsk_common.jsk_data;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    message_generation
  ];

  colconRunDepends = [
    depth_image_proc
    dynamic_reconfigure
    image_transport
    jsk_topic_tools
    message_runtime
    nodelet
    openni_launch
    pr2_description
    pr2_machine
    python3Packages.click
    python3Packages.paramiko
    python3Packages.pyyaml
    rosbag
    rqt_bag
    rviz
    tf2_ros
    xacro
  ];

  colconTestDepends = [
    python3Packages.imageio
    python3Packages.nose
    pythonPackages.freezegun
    roslaunch
    roslint
    rostest
  ];
}
