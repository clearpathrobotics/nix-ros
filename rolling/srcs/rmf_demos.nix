{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "open-rmf";
    repo = "rmf_demos";
    rev = "7c6cef418393db843444d661869a10a096ca9448";
    hash = "sha256-GAPpEEqnXrXN6RfCVFlClextTV4QAs7mexws9UmSIvE=";
    name = "open-rmf-rmf_demos-7c6cef418393db843444d661869a10a096ca9448";
  });
in
{
  rmf_demos = pkg "sha256-wGt6x2TIcqxUy2eZGnwgtEGFzKKelOSr8GavCe/5hi8=" "rmf_demos";
  rmf_demos_assets = pkg "sha256-4jZ4MFSoVt0HZkJ54eKl2H7yzYSE0zqBfGxOrTZUp2U=" "rmf_demos_assets";
  rmf_demos_bridges = pkg "sha256-GVgsBeW0K9aDaNZS/NHWgDgrNqmW6jOP9X10FXsLRN0=" "rmf_demos_bridges";
  rmf_demos_dashboard_resources = pkg "sha256-N1g1p/GTLBmn4ww5gZvA3QmS2QWYH/6Y5owSd9zm2r0=" "rmf_demos_dashboard_resources";
  rmf_demos_fleet_adapter = pkg "sha256-Wf4DE6kOALVLpsjybsneqGSQ5Gc0jPENIYPfS5tVLHw=" "rmf_demos_fleet_adapter";
  rmf_demos_gz = pkg "sha256-FOy3Ws66MIrb3ticDsp9e6BmWsC/qmNmOFg4FtZinKQ=" "rmf_demos_gz";
  rmf_demos_gz_classic = pkg "sha256-VuqB0Di9yeQJ2YSjijEcw7YrPPWarYNA9a/PvBLy1Vc=" "rmf_demos_gz_classic";
  rmf_demos_maps = pkg "sha256-IuYTUGoOcKgxzQIy80QUmiUl/VG+ZLH58ZCb9aw/TmA=" "rmf_demos_maps";
  rmf_demos_panel = pkg "sha256-mq7qbIEHLMW95Wd6wu/mr+saoaBcVIU3X/g6Xx8ZmQU=" "rmf_demos_panel";
  rmf_demos_tasks = pkg "sha256-LI8vPqOof13JAzKqL3MB5J9YnswD2ddtrvjWf6vtHoI=" "rmf_demos_tasks";
}
