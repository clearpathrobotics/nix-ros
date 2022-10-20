{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tuw-robotics";
    repo = "tuw_msgs";
    rev = "2f2f96bc185b0f3ad3ec7b32189b9ed9358421c7";
    hash = "sha256-XTXqYOB6nbNMUhM/C4mukuIQEUs0bIUMr0FElyLbkN4=";
    name = "tuw-robotics-tuw_msgs-2f2f96bc185b0f3ad3ec7b32189b9ed9358421c7";
  });
in
{
  tuw_airskin_msgs = pkg "sha256-b44AtEyUKSZ7WrM66k8A0nnwP5WCMRqNn60PTsQRSko=" "tuw_airskin_msgs";
  tuw_gazebo_msgs = pkg "sha256-gRP0c4zzJh9g6/dhK7LPWh/xJNwITKPqr6sHGp58ad4=" "tuw_gazebo_msgs";
  tuw_geometry_msgs = pkg "sha256-ERoU+oWtgzAiEyDOT3Cza+8qUs2dc34UNCP/FIaqqvc=" "tuw_geometry_msgs";
  tuw_local_controller_msgs = pkg "sha256-r1tztKEd5dZWfL805fxCNZ/ZCh04GSnHwiOzjwQKd2k=" "tuw_local_controller_msgs";
  tuw_msgs = pkg "sha256-DTeE3sbJu8sWwQISxlZe8AcT6u5yX4mFZuAj6gdPtf8=" "tuw_msgs";
  tuw_multi_robot_msgs = pkg "sha256-MTDx3tn6guOmSDY8bYeSX7tekXMkCyvAOazjbML8/GA=" "tuw_multi_robot_msgs";
  tuw_nav_msgs = pkg "sha256-3dTM7thzH+pbsIvQbwD2+HgckLne4LCr7ErjFpXQlm0=" "tuw_nav_msgs";
  tuw_object_msgs = pkg "sha256-i6DmX0accJ7R6yge8Z5Milp+aWkY3WzfF3syOVK/K3o=" "tuw_object_msgs";
  tuw_vehicle_msgs = pkg "sha256-SUVwOmtKMN1ef41VIaif0AwGnfS5FnOtgKi+VoAOkmY=" "tuw_vehicle_msgs";
  tuw_waypoint_to_spline_msgs = pkg "sha256-ONCtWIthuc+eF6EpbhRtTPeIc8Z5fZYfUd1lPbgz2SU=" "tuw_waypoint_to_spline_msgs";
}
