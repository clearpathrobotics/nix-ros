{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "robosoft-ai";
    repo = "SMACC2";
    rev = "ac252e4c672df8ceea30aab8fe9cc758551c35ff";
    hash = "sha256-4fSNkCxPV8nYT6Cn1cre6054Jwvu1p34AliGc37SCGs=";
    name = "robosoft-ai-SMACC2-ac252e4c672df8ceea30aab8fe9cc758551c35ff";
  });
in
{
  backward_global_planner = pkg "sha256-rjdZ0mF9z1tx63DOFNQUL+nIQC8sKl9Ol6Qv5J6wihc=" "smacc2_client_library/nav2z_client/custom_planners/backward_global_planner";
  backward_local_planner = pkg "sha256-mtlYh2vvrsPCTvHCaEH53Ez8WUTzuhK+mpfyDYw2vGg=" "smacc2_client_library/nav2z_client/custom_planners/backward_local_planner";
  eg_conditional_generator = pkg "sha256-LcwCS458p7mW3nU10GkAV4j0oHSGRVFMfO0EM4/+psA=" "smacc2_event_generator_library/eg_conditional_generator";
  eg_random_generator = pkg "sha256-S3PPo/3cv2oKLE48KpMqYcW68srzTNPrHzJp2C7dbhY=" "smacc2_event_generator_library/eg_random_generator";
  forward_global_planner = pkg "sha256-eY9Jx3bhhCwjd1Y9vPyuG1jMTtbN3bJj5rB7lNGGpQ8=" "smacc2_client_library/nav2z_client/custom_planners/forward_global_planner";
  forward_local_planner = pkg "sha256-NzLnLpiieP4jpAG2y/M73WCFOcMRmeusOt69siGDFTw=" "smacc2_client_library/nav2z_client/custom_planners/forward_local_planner";
  keyboard_client = pkg "sha256-iOisSVhJAki/kkRk7y0mAdl/OA+lcoEK3LG22NRh9yc=" "smacc2_client_library/keyboard_client";
  move_group_interface_client = pkg "sha256-nrHajJ/GE8vhOz77//nj8TIMUt+xLl+tcm5O++aZ6DQ=" "smacc2_client_library/move_group_interface_client";
  multirole_sensor_client = pkg "sha256-4rIyEN/6sX+zQbxgskSlq2JJF2ANY8hAXyCMk7mP2f0=" "smacc2_client_library/multirole_sensor_client";
  nav2z_client = pkg "sha256-xNs/4suaHtjIORWy710tQhfVxPHdNcTjQ82hyWNDMSA=" "smacc2_client_library/nav2z_client/nav2z_client";
  nav2z_planners_common = pkg "sha256-klNzsfY6zDO+Nj5DLLbZj16XO/V3gX16/PDvoFPR4pg=" "smacc2_client_library/nav2z_client/custom_planners/nav2z_planners_common";
  pure_spinning_local_planner = pkg "sha256-ji3fAYE05HJrVFLKkniBkyrfCgzKL2xkUgJw5LUIe4k=" "smacc2_client_library/nav2z_client/custom_planners/pure_spinning_local_planner";
  ros_publisher_client = pkg "sha256-bWvCMGXwETyUZKZjXyzYiXzuxVskOa0tq6EXR5PBKJw=" "smacc2_client_library/ros_publisher_client";
  ros_timer_client = pkg "sha256-ysYIFrVRdv87b2csxWI139quwofRlg17uYKjEzg4vbY=" "smacc2_client_library/ros_timer_client";
  sm_advanced_recovery_1 = pkg "sha256-wnI3hUIyW4LQLiOoiMBJBtRQHPhS+SABBy7QFwgR+Bk=" "smacc2_sm_reference_library/sm_advanced_recovery_1";
  sm_atomic = pkg "sha256-yQLLG2oYla+sPY+af2vqK9N0OIEtqVbg+GyAO5YrP8w=" "smacc2_sm_reference_library/sm_atomic";
  sm_atomic_24hr = pkg "sha256-6x/+s/OjQ6CjYFQlCheGRlxkQ4TRLVheZiL36c3Zvus=" "smacc2_sm_reference_library/sm_atomic_24hr";
  sm_atomic_performance_trace_1 = pkg "sha256-qshNnalIUHezX50uKNRuHRQDNEfwbVSpveiVXy/nEQU=" "smacc2_performance_tools/performance_tests/sm_atomic_performance_trace_1";
  sm_atomic_subscribers_performance_test = pkg "sha256-NgftnLHSJu9WoKFY1kAHWucziJLTz1/g9zEKWouDcKM=" "smacc2_performance_tools/performance_tests/sm_atomic_subscribers_performance_test";
  sm_autoware_avp = pkg "sha256-vARXk2uYbLtnd6ZhBdq/2SgQS7m6/2EpHVV0y5EMyo4=" "smacc2_sm_reference_library/sm_autoware_avp";
  sm_aws_warehouse_navigation = pkg "sha256-Yfu91Xt28gw3A+EY6VQDBBje4DrFXuWHWwHKTdhaLCQ=" "smacc2_sm_reference_library/sm_aws_warehouse_navigation";
  sm_branching = pkg "sha256-ZMsA4+JPgz4Tr4Xeb/mbCeoWpn3tgS0z08jSeO6L2gk=" "smacc2_sm_reference_library/sm_branching";
  sm_coretest_transition_speed_1 = pkg "sha256-NAkFktkvE60v7nNtGu5aivYpkVH67SWicZUf5Bg9mrg=" "smacc2_performance_tools/performance_tests/sm_coretest_transition_speed_1";
  sm_dance_bot = pkg "sha256-CqG1qYYvhDvyWKqvHRgbAdkjlH6Ld3hFSxxJhUurA34=" "smacc2_sm_reference_library/sm_dance_bot";
  sm_dance_bot_strikes_back = pkg "sha256-2uMowMPaVuyfQbwOJBU7CMlI7/UqMmAJ5e+mjg2Lem8=" "smacc2_sm_reference_library/sm_dance_bot_strikes_back";
  sm_dance_bot_warehouse = pkg "sha256-FXt9ERXsomClEbNTdqdoIDeSVV8l2ULWUIX9YLZqeWM=" "smacc2_sm_reference_library/sm_dance_bot_warehouse";
  sm_dance_bot_warehouse_2 = pkg "sha256-l8s/EteLEv3F0Nw67yKFrCh079Q0r0DmNJhyxd5WogA=" "smacc2_sm_reference_library/sm_dance_bot_warehouse_2";
  sm_dance_bot_warehouse_3 = pkg "sha256-FDPvKZi8JOBPtphQ0Hvtmlpnh6OPJyxxIHeYWFVttxM=" "smacc2_sm_reference_library/sm_dance_bot_warehouse_3";
  sm_husky_barrel_search_1 = pkg "sha256-nQoKAZsAScjbby/fH1A71HelYBK+NKiPqGJ9YRelKPE=" "smacc2_sm_reference_library/sm_husky_barrel_search_1";
  sm_multi_stage_1 = pkg "sha256-x7qR7uXFLDB8GCbLcq5jbY3MC8SP93cAXootm9ULMWo=" "smacc2_sm_reference_library/sm_multi_stage_1";
  sm_pubsub_1 = pkg "sha256-78KiKoUrcQqCZdMANai1Eq9CS+6Lv8xLPdwoNDew2Tw=" "smacc2_sm_reference_library/sm_pubsub_1";
  sm_respira_1 = pkg "sha256-ik0nqCUHub1sq9L6mKPVbFVCSo/77wN3vHxDJNR8QSY=" "smacc2_sm_reference_library/sm_respira_1";
  sm_test_moveit_ur5_sim = pkg "sha256-U9W/ADQ5Tmc9UVFV+jFWqD3M1mx607UL41+LAWNfKj0=" "smacc2_sm_reference_library/sm_test_moveit_ur5_sim";
  sm_three_some = pkg "sha256-+h/PoS2XjKhfG8UUuQhklG7nOG9EAykFWpfHlCYJSSM=" "smacc2_sm_reference_library/sm_three_some";
  smacc2 = pkg "sha256-NOScTLSbY7rfs9XCtfSJr/0w5A4a6IzRlmtSbd1aEFA=" "smacc2";
  smacc2_msgs = pkg "sha256-tY/UoVoVSZ2FyHW7T+eKrXBqfK1KVQiZatRamEO/K6M=" "smacc2_msgs";
  sr_all_events_go = pkg "sha256-t12ICWuoxew0ew2Fpfggqfzi69DkLsyb3AQihjFwMis=" "smacc2_state_reactor_library/sr_all_events_go";
  sr_conditional = pkg "sha256-/aFoVVFbkxzGjjRgadEdCBm8GC6AdWerSH/vwDOcMVg=" "smacc2_state_reactor_library/sr_conditional";
  sr_event_countdown = pkg "sha256-ec2vc5PyLtweyB7Mq5rpXMrL0R0Qy4fM7VVJDiR1x/w=" "smacc2_state_reactor_library/sr_event_countdown";
  undo_path_global_planner = pkg "sha256-b/iejf650PGUlC8AQ1BitpqWevEPCl/EK1TbzJyhqQ4=" "smacc2_client_library/nav2z_client/custom_planners/undo_path_global_planner";
}
