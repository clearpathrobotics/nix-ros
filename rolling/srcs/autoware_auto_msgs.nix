{ pkgSrc, fetchFromGitLab }:
let
  pkg = pkgSrc (fetchFromGitLab {
    owner = "autowarefoundation/autoware.auto";
    repo = "autoware_auto_msgs";
    rev = "818d3587d41728422b768898e9c8d2e55bad9e5f";
    hash = "sha256-dbSSlbz5FnTvdfGZzOcLoW2vf9v/yeKAeFD02iw/64s=";
    name = "autowarefoundation-autoware.auto-autoware_auto_msgs-818d3587d41728422b768898e9c8d2e55bad9e5f";
  });
in
{
  autoware_auto_control_msgs = pkg "sha256-xiIcM75H66F/KxhLyCN98MciW1JQAqIWjYs19a2zKog=" "autoware_auto_control_msgs";
  autoware_auto_debug_msgs = pkg "sha256-3vDni3IL+SQ+bFfp05df/bveZQDZU3n34w8xSg40qeY=" "autoware_auto_debug_msgs";
  autoware_auto_geometry_msgs = pkg "sha256-VWlVSfdg0pAKJjRWv6a5w1JY9++/ZkzW6Ez+amqtszk=" "autoware_auto_geometry_msgs";
  autoware_auto_mapping_msgs = pkg "sha256-m4XYw9QuIo6VQUorNwHwsiIdczFtiVZ8AMqRhZS9Oxo=" "autoware_auto_mapping_msgs";
  autoware_auto_msgs = pkg "sha256-VrVu4fTW4CT2hTmBo7yPLHDgcPMAPE5IwdsIVjHT3cc=" "autoware_auto_msgs";
  autoware_auto_perception_msgs = pkg "sha256-KjG570JAuiBMKnfRYyVxlY50kH/WedZyx/Ywgj/N0TE=" "autoware_auto_perception_msgs";
  autoware_auto_planning_msgs = pkg "sha256-BiWSwFs1+stDFLJg79Yo8L7UzeeoAx0UOwwQPmgb/TA=" "autoware_auto_planning_msgs";
  autoware_auto_system_msgs = pkg "sha256-63WbtiByOH/IXUdBmvpqRwjndVJ2t0vcCN2SbFsgup0=" "autoware_auto_system_msgs";
  autoware_auto_vehicle_msgs = pkg "sha256-Ke04Ktb0UKKW50aYBxMuExSPsvagxuXCuvu3je/boKw=" "autoware_auto_vehicle_msgs";
}
