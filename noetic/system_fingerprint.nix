{
  catkin,
  python3Packages,
  roslib,
  rosnode,
  rospy,
  rosservice,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "system_fingerprint";
  pkgFinal = final.noetic.system_fingerprint;
  src = srcs.system_fingerprint.system_fingerprint;

  colconBuildDepends = [
    catkin
    roslib
    rosnode
    rospy
    rosservice
  ];

  colconRunDepends = [
    python3Packages.GitPython
    roslib
    rosnode
    rospy
    rosservice
  ];

  colconTestDepends = [
    rostest
  ];
}
