{
  catkin,
  rosbash,
  rosconsole,
  roscpp,
  rostest,
  rosunit,
  tf2,
  tf2_bullet,
  tf2_eigen,
  tf2_geometry_msgs,
  tf2_kdl,
  tf2_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_tf2";
  pkgFinal = final.noetic.test_tf2;
  src = srcs.geometry2.test_tf2;

  colconBuildDepends = [
    catkin
    rosconsole
    roscpp
    rostest
    tf2
    tf2_bullet
    tf2_eigen
    tf2_geometry_msgs
    tf2_kdl
    tf2_msgs
    tf2_ros
  ];

  colconRunDepends = [
    rosconsole
    roscpp
    rostest
    tf2
    tf2_bullet
    tf2_eigen
    tf2_geometry_msgs
    tf2_kdl
    tf2_msgs
    tf2_ros
  ];

  colconTestDepends = [
    rosbash
    rosunit
  ];
}
