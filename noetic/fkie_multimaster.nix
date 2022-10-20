{
  catkin,
  fkie_master_discovery,
  fkie_master_sync,
  fkie_multimaster_msgs,
  fkie_node_manager,
  fkie_node_manager_daemon,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fkie_multimaster";
  pkgFinal = final.noetic.fkie_multimaster;
  src = srcs.fkie_multimaster.fkie_multimaster;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    fkie_master_discovery
    fkie_master_sync
    fkie_multimaster_msgs
    fkie_node_manager
    fkie_node_manager_daemon
  ];

  colconTestDepends = [
  ];
}
