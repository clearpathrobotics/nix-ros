{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "locusrobotics";
    repo = "robot_navigation";
    rev = "2350d4d5634e9136b2f04836f785b2237a93a975";
    hash = "sha256-f2CKfj39Yrj8O+3QuJmmhxa6GYgjtMoREVnwJvt5rxA=";
    name = "locusrobotics-robot_navigation-2350d4d5634e9136b2f04836f785b2237a93a975";
  });
in
{
  color_util = pkg "sha256-jPlMr4t8eeeqJOIX/lVOF7L6Xy6obFj7CTvVeZjl7hw=" "robot_nav_tools/color_util";
  costmap_queue = pkg "sha256-2C0xeebRaXV/wQ4UFFo9my9nHzxAH51HS23MuiZtVb8=" "costmap_queue";
  dlux_global_planner = pkg "sha256-mO+B9sW6rHvFb1VUCihRRMuV769a7p+AkqdW3YEomMY=" "dlux_global_planner";
  dlux_plugins = pkg "sha256-muR7RnF/u1GeXx03ua3MUFiD4twIJrYxHYssAVIs8lo=" "dlux_plugins";
  dwb_critics = pkg "sha256-Kq+aG2XrXt2Carc22YW2tRpUWJ4IDmBrPJ6HX/hoHec=" "dwb_critics";
  dwb_local_planner = pkg "sha256-UW/FZW2BlEXJc4IId2C9vwru1AKxieWNYzA+Io81ZUc=" "dwb_local_planner";
  dwb_msgs = pkg "sha256-6XfnYy+V8npkdg9y6OaG3LbO0YSTUcspv8RV8P74Mag=" "dwb_msgs";
  dwb_plugins = pkg "sha256-HBrDdraukG+ow7VqvcK/hy2zp5+BRn3V0SnmAzJzix4=" "dwb_plugins";
  global_planner_tests = pkg "sha256-WSqnK7PNOh073zAZJyQDSUdrjfZP7oZXTPdAW84gPzY=" "global_planner_tests";
  locomotor = pkg "sha256-6kaeiVqQQXuk1FiGb9diHZGgqlpmtuPwUaSR8aS8jNY=" "locomotor";
  locomotor_msgs = pkg "sha256-8wd+GkOEiZVqiKbiPlW6w46GlIpukjGUmKaFONH6NhM=" "locomotor_msgs";
  locomove_base = pkg "sha256-2Ri7zaCF0qhInUk7qMDo4+7PUZ057974rXvgFwG8cvE=" "locomove_base";
  nav_2d_msgs = pkg "sha256-OyBvIot9zrxplyWwZmGVg6CJ/hkJPM7JglKIoCrL9Vw=" "nav_2d_msgs";
  nav_2d_utils = pkg "sha256-+i4penKMzn6QZa6GytbPX+LEX2mlU93qbN7OWdIlzsI=" "nav_2d_utils";
  nav_core2 = pkg "sha256-9Zltic/fAkiKS7p9+TBOHnxUDwloEeqyBV4anoXOI2s=" "nav_core2";
  nav_core_adapter = pkg "sha256-vowLCtbmyH+JciRFH89foI2UXV7AVRfMksMhyDCwqmg=" "nav_core_adapter";
  nav_grid = pkg "sha256-A5Q70LXKruvFOTTou+LfaVucCYO2EazGAw6HCfMijkQ=" "nav_grid";
  nav_grid_iterators = pkg "sha256-T/gPDwYdZCcZrqM4EQ2/B66fRNiXu/pszU+FsGd+pqE=" "nav_grid_iterators";
  nav_grid_pub_sub = pkg "sha256-vtL2e/PVp6qbix+TBIzFYLcQP5lQebxsF7fuoxweCj8=" "nav_grid_pub_sub";
  nav_grid_server = pkg "sha256-E/74B1PtdSZHVXREd0dRndXdxcURtBQu/+bBYMn9/Jc=" "nav_grid_server";
  robot_nav_rviz_plugins = pkg "sha256-n/F2qRZi2B9KDRCBwcsQHlyUbwMBFW4+e9cB4Tv4IW0=" "robot_nav_tools/robot_nav_rviz_plugins";
  robot_nav_tools = pkg "sha256-fRAzezBF+CtmRJ0gXjb7O3QOiE4bhjnRUipstsp9mH8=" "robot_nav_tools/robot_nav_tools";
  robot_nav_viz_demos = pkg "sha256-b7LRToEg7iFc0Y2jigP4affMkXLoTTxdmEO+p/BGg2I=" "robot_nav_tools/robot_nav_viz_demos";
  robot_navigation = pkg "sha256-r9dWbJZj1Vlo8q1873frJ2Id63ooJu+QMczpVnA76BE=" "robot_navigation";
  rqt_dwb_plugin = pkg "sha256-tB9sZ60slk1qSTfL4pYPRO4nAHA9PlN0sHvcBe+i+0k=" "robot_nav_tools/rqt_dwb_plugin";
}
