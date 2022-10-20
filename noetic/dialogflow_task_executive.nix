{
  app_manager,
  catkin,
  catkin_virtualenv,
  message_generation,
  message_runtime,
  roslaunch,
  speech_recognition_msgs,
  std_msgs,
  topic_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dialogflow_task_executive";
  pkgFinal = final.noetic.dialogflow_task_executive;
  src = srcs.jsk_3rdparty.dialogflow_task_executive;

  colconBuildDepends = [
    catkin
    catkin_virtualenv
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    app_manager
    message_runtime
    speech_recognition_msgs
    topic_tools
  ];

  colconTestDepends = [
    roslaunch
  ];
}
