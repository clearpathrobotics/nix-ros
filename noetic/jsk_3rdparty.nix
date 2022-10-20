{
  assimp_devel,
  bayesian_belief_networks,
  catkin,
  dialogflow_task_executive,
  downward,
  ff,
  ffha,
  gdrive_ros,
  google_cloud_texttospeech,
  julius,
  julius_ros,
  libcmt,
  libsiftfast,
  mini_maxwell,
  nlopt,
  opt_camera,
  pgm_learner,
  rospatlite,
  rosping,
  rostwitter,
  sesame_ros,
  slic,
  voice_text,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_3rdparty";
  pkgFinal = final.noetic.jsk_3rdparty;
  src = srcs.jsk_3rdparty.jsk_3rdparty;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    assimp_devel
    bayesian_belief_networks
    dialogflow_task_executive
    downward
    ff
    ffha
    gdrive_ros
    google_cloud_texttospeech
    julius
    julius_ros
    libcmt
    libsiftfast
    mini_maxwell
    nlopt
    opt_camera
    pgm_learner
    rospatlite
    rosping
    rostwitter
    sesame_ros
    slic
    voice_text
  ];

  colconTestDepends = [
  ];
}
