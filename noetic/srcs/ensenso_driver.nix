{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ensenso";
    repo = "ros_driver";
    rev = "06e495817ee0bee4c1c2e9da79a5e1830348bb5e";
    hash = "sha256-lhKYLvuSiqR1/0Ldl3ZSZFbbU5XAOwQ9iK84K/5mGWk=";
    name = "ensenso-ros_driver-06e495817ee0bee4c1c2e9da79a5e1830348bb5e";
  });
in
{
  ensenso_camera = pkg "sha256-P6fDvOmYqaLib5bk1TMOKopobkCNaZbSTKCVMDvTW9o=" "ensenso_camera";
  ensenso_camera_msgs = pkg "sha256-l1aOCuc6+ROmzogZIlkfI2EC9dX4j9l6ki49EDfte10=" "ensenso_camera_msgs";
  ensenso_camera_test = pkg "sha256-NSsWET10QnazMzqkk8QmRcPEPQt39B/J2kWM4DJ4WRc=" "ensenso_camera_test";
  ensenso_description = pkg "sha256-b6VqFanbmuayc34msq5vvyFcPeoPMi2F/t8HYB7WPqc=" "ensenso_description";
  ensenso_driver = pkg "sha256-kTCdrNCiTCjYDBrtLB65UoSeCIiSjGHolcfD/d7EG6I=" "ensenso_driver";
}
