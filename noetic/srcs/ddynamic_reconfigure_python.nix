{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "pal-robotics";
    repo = "ddynamic_reconfigure_python";
    rev = "d1dc50162fb8fc3112d3e5483ff09369c9533f69";
    hash = "sha256-NMJNwnlN8t8sfSh0/81m/i4UEgtdoktMNd9RxuPviJg=";
    name = "pal-robotics-ddynamic_reconfigure_python-d1dc50162fb8fc3112d3e5483ff09369c9533f69";
  });
in
{
  ddynamic_reconfigure_python = pkg "sha256-NMJNwnlN8t8sfSh0/81m/i4UEgtdoktMNd9RxuPviJg=" ".";
}
