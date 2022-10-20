{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "calibration";
    rev = "414bad28ff1cb238e418d1ea7957be937e1bc612";
    hash = "sha256-OwAFhjb2/+SeVBkxt0hsOL5+lFNVs++LB9Haee+mz7U=";
    name = "ros-perception-calibration-414bad28ff1cb238e418d1ea7957be937e1bc612";
  });
in
{
  calibration = pkg "sha256-3d5pFcpjXipJo9NLtZF+a2egwmgSglX6/pASpfiorww=" "calibration";
  calibration_estimation = pkg "sha256-zA++EMqqTySSrx2yPtv1cQUiUjqe7nk5G/9wkuxw5OQ=" "calibration_estimation";
  calibration_launch = pkg "sha256-8xngboNaokVyCndanGjnb4SHt9tXkCMvL/1lLcR3E64=" "calibration_launch";
  calibration_msgs = pkg "sha256-TJJfCZYOI84eDQWd3zHkeTouPRbozw2MN+ahDRVcvtc=" "calibration_msgs";
  calibration_setup_helper = pkg "sha256-4xVtdKgRFZOCY5sMJ2kh9IRvozNNkdYBvwWF3PfwRNU=" "calibration_setup_helper";
  image_cb_detector = pkg "sha256-i4Hw5MQPvJUmDKC+Hl66pTNdFkCpXPzHGZMQPiSHcfs=" "image_cb_detector";
  interval_intersection = pkg "sha256-rkLBelaRrHWD0oIoMeggODEwtaw4OKZJK0FaqsYs7Lc=" "interval_intersection";
  joint_states_settler = pkg "sha256-UI31iL1SwY1U6qK6dorNCeuBkZcu2U3ZLV3srahaNsM=" "joint_states_settler";
  laser_cb_detector = pkg "sha256-5zhA0YPuHP+ODUlVQWJXmkLGzUZTsUWQAU9RfJ9gSPU=" "laser_cb_detector";
  monocam_settler = pkg "sha256-lK1Obf9oB5zn6ZhAxHS9w/rRPpTF6LnQgLGhmTJzXdk=" "monocam_settler";
  settlerlib = pkg "sha256-IzwM4117RXEovzFCq3mnkGXIf4tsZBejilCBvy7eNdY=" "settlerlib";
}
