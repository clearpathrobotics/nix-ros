{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "slam_gmapping";
    rev = "0835d19c69dae36c98b8fa337f4cc2162bdbaf0c";
    hash = "sha256-pGe3fUBHW4grkSpFaIZ4NzZ/j4yXhc8o4hRyia0TK7U=";
    name = "ros-perception-slam_gmapping-0835d19c69dae36c98b8fa337f4cc2162bdbaf0c";
  });
in
{
  gmapping = pkg "sha256-FV38OklHuphVWZz1xC4E6QVXr5EIgEC8PAO6qH8mUuE=" "gmapping";
  slam_gmapping = pkg "sha256-4YLypSEaqdDk+RLuRs2KTHo3ItSVm18ttlg+jYhPx0M=" "slam_gmapping";
}
