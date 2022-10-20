{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "open-rmf";
    repo = "rmf_internal_msgs";
    rev = "229481160cd7268864478979c6e486610c50c12c";
    hash = "sha256-WXhOiW5Z2taRYbWZPlngVAwRV24TF70qazTuKQJzlWc=";
    name = "open-rmf-rmf_internal_msgs-229481160cd7268864478979c6e486610c50c12c";
  });
in
{
  rmf_charger_msgs = pkg "sha256-hH1GV95xb8TI/MP2ZuYE1cVWmLIkq8Lkhok8Z8iKdpQ=" "rmf_charger_msgs";
  rmf_dispenser_msgs = pkg "sha256-ypTDefOALcU+eheE2yHxNttn9M/C+bGQVAJAjjB9esI=" "rmf_dispenser_msgs";
  rmf_door_msgs = pkg "sha256-Kzil+f9LbkzuB9tHoMpS9PJ35E1Qqj4HQYHPntQzmD0=" "rmf_door_msgs";
  rmf_fleet_msgs = pkg "sha256-cHJ5ShVNkUgXeQeJRFLe0QctqLASr6YE3WpXki8h4b0=" "rmf_fleet_msgs";
  rmf_ingestor_msgs = pkg "sha256-Hd+foQ3bdaKMSWjlbu6V28iHMZ5unycE28b7UBx+uqg=" "rmf_ingestor_msgs";
  rmf_lift_msgs = pkg "sha256-cn0TyvqvEtBbkTp21sJrWuDGissqon+8wKtxonSVuy4=" "rmf_lift_msgs";
  rmf_obstacle_msgs = pkg "sha256-UCSDV4fBE56IkRhtFc8xfAC2kDKPQSB3rmxbTpKdQOI=" "rmf_obstacle_msgs";
  rmf_scheduler_msgs = pkg "sha256-tXStLlhRvrinb2l52Ra0OEP2MWE5bzp2/vbU/Sjt4JU=" "rmf_scheduler_msgs";
  rmf_site_map_msgs = pkg "sha256-xbqWgTuMXvTQ9udDdPQilPg13ftpyApRhaoteKv2MmM=" "rmf_site_map_msgs";
  rmf_task_msgs = pkg "sha256-aSjXGh3ILbEbcNtPr5d63afCNTC2m3B8VS5Y4hNRKTQ=" "rmf_task_msgs";
  rmf_traffic_msgs = pkg "sha256-RGj1JixPHuLmscWz1/J5TGsWaajpCMjtKKPO4PrnC5Q=" "rmf_traffic_msgs";
  rmf_workcell_msgs = pkg "sha256-ArC3PjHSkzTnQOhRmxbX3XyEcyZrh2VKc5DkM//hnug=" "rmf_workcell_msgs";
}
