{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "jsk-ros-pkg";
    repo = "jsk_3rdparty";
    rev = "328668df4de2957097e5701fcc5f82a53aa9601d";
    hash = "sha256-Yh5R8j5M8R70emDbtrWUQa3UFWa7lc6X7F4mPxYaFbQ=";
    name = "jsk-ros-pkg-jsk_3rdparty-328668df4de2957097e5701fcc5f82a53aa9601d";
  });
in
{
  aques_talk = pkg "sha256-eqohLXwJ9WsxLPbo8ElI3MrO9+lzHZTAl0Whc3QEglQ=" "3rdparty/aques_talk";
  assimp_devel = pkg "sha256-MvgoTtm1Ltngvc86eat2QaIHq3oeqm0TCkGAUiVz8Iw=" "3rdparty/assimp_devel";
  bayesian_belief_networks = pkg "sha256-MeklYGIsbgEn207d/qZh2VRoyrHnIgdBF1GgknItrmE=" "bayesian_belief_networks";
  chaplus_ros = pkg "sha256-6msmErAdPcZ4DKzgpp2wzqX6zBIjFPWm8+DnfwbTbJY=" "chaplus_ros";
  collada_urdf_jsk_patch = pkg "sha256-9awFjpCoWvobe1b23HmEXCJh1PwF02EVB/o5T9HB0Os=" "jsk_ros_patch/collada_urdf_jsk_patch";
  crlibm = pkg "sha256-84jNVyE2IOCd71f7nCyF5ngUyI2dFXFiGIEDnh7RNhQ=" "3rdparty/crlibm";
  dialogflow_task_executive = pkg "sha256-5gTgM2i7l2aUPtMX2ztsHB9q6MgW9wy03Z1Izcx0Aco=" "dialogflow_task_executive";
  downward = pkg "sha256-0pd/HaQl8Pk+vrsjE/wGK85KeLx843ZhmIb3GeocJQg=" "3rdparty/downward";
  ee_cart_imped_jsk_patch = pkg "sha256-mtrDvg7ovcTghSRSHdRC2fgIY5cIVQ2ZYvPKF+YJTDg=" "jsk_ros_patch/ee_cart_imped_jsk_patch";
  ff = pkg "sha256-sY1XgSi7TIPy5v4bZXYuDkq02e4Hc+HTCyy0Mib0M/o=" "3rdparty/ff";
  ffha = pkg "sha256-HLpYrJ0Njcb8Oj3CQGG1/DauQp1QImAgMLGpPCb2I1U=" "3rdparty/ffha";
  gdrive_ros = pkg "sha256-+mahBqLRLhNEKfqT1bJ5Mmai830QY2MqDzTR/aZakHI=" "gdrive_ros";
  google_cloud_texttospeech = pkg "sha256-isAw89Y4GNrIlu4KKmleaeoXfX1MYDg40g1kfJAzjWI=" "3rdparty/google_cloud_texttospeech";
  influxdb_store = pkg "sha256-1KCV+SrrDAsj3J3bb+zE+wYnVjkwgOJm13TWTnEqLCU=" "influxdb_store";
  jsk_3rdparty = pkg "sha256-w8cHbI0hHqDEi1VDkYbOceU1f5e2o2/Y7seG6dUspwA=" "jsk_3rdparty";
  julius = pkg "sha256-jrh+N5/5sq0stnw9W+ECvbXKCHcgeBEgyDHBxR6nlUo=" "3rdparty/julius";
  julius_ros = pkg "sha256-2MwueLcb8IbklzMe6PuxveRF0oUAGZW9Khv0ib6juGQ=" "julius_ros";
  laser_filters_jsk_patch = pkg "sha256-Di2n98tNnlvTbRpzrQuJaj0gCFk/4F1iQHE18mdOVlo=" "jsk_ros_patch/laser_filters_jsk_patch";
  libcmt = pkg "sha256-bYTplsexi3qnmhpFDkoJZCegeZSGLZ3521mJKOeOL6k=" "3rdparty/libcmt";
  libsiftfast = pkg "sha256-8z8kZbYPLBKRGE2Q0MYfpJUXqYviVqM3rBUXqPY3boU=" "3rdparty/libsiftfast";
  lpg_planner = pkg "sha256-SsjfaUPHl2FhheVjDgcXEZ0y/5gmkp8XcS8OaExJYnE=" "3rdparty/lpg_planner";
  mini_maxwell = pkg "sha256-HvwXwco9n1C9pyoXthI37/nTxTT3cAd4OJEag+l1Jg0=" "3rdparty/mini_maxwell";
  nlopt = pkg "sha256-3X2wBan6FeX542Zx1CknoMg9L5ZRHuNyUa3uSNgLg7c=" "3rdparty/nlopt";
  opt_camera = pkg "sha256-weQjxYVJ61M1yYGfrSHBmtXmzeZ/tMerqi34JeiiPOo=" "opt_camera";
  pgm_learner = pkg "sha256-hGYp2TLuxXinArFLdWCOzenY+BKY/6EldnKfQNEhe1I=" "pgm_learner";
  python_twitter = pkg "sha256-cTwApM07ja32OYnZ/yHjyJoJVdeIil19hPynMoPKGkI=" "3rdparty/python_twitter";
  respeaker_ros = pkg "sha256-FTMJvU17ojPGQOPcxs5U1SVdAkObwboa9pGvH3OtHlQ=" "respeaker_ros";
  ros_speech_recognition = pkg "sha256-e9RiJdxkk3wTjriehgRUB+9Hf8HZWpHR34lPX4Mmh9I=" "ros_speech_recognition";
  rospatlite = pkg "sha256-bdfrXJiUD/KowJigThaLan7ItcR9C0OMIVSQJDUAyzg=" "rospatlite";
  rosping = pkg "sha256-dktJqcFtqUkfrQVfd++b2wKEB3Yv2TpjPGJ8TyGPzzI=" "rosping";
  rostwitter = pkg "sha256-Pd6C3jbTYnUNmpRqwYXi2nC+cbqwKiD1/jvcW3r5mUk=" "rostwitter";
  sesame_ros = pkg "sha256-aPuy6PrtWRMLBggtZeONdCX4q5mDpk0ypDQP2MrMwLU=" "sesame_ros";
  slic = pkg "sha256-AwQWguq1qdhXDq3ss+skRt85EK60lzGLQnOMjirQ4l4=" "3rdparty/slic";
  switchbot_ros = pkg "sha256-v8Wz9hIvuMYGLty2414dHtKECX7oXGXXU2YLyL/P8Bw=" "switchbot_ros";
  voice_text = pkg "sha256-k5Mgiwl4YFM3TE5t7YAD9Iptv2V1cTIDqJnu5cBH/8c=" "3rdparty/voice_text";
  webrtcvad_ros = pkg "sha256-SSX62d4FQELnDm5+On7s0cf46yh5ru/6tWQeTmRa0OU=" "webrtcvad_ros";
}
