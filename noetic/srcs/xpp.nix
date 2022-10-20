{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "leggedrobotics";
    repo = "xpp";
    rev = "5527b2820247c712dba622872a15f0242c2c60ed";
    hash = "sha256-hmVmYaDqA2A8CfAh3q6BPTEPfqe1cEL0VRIpa44HjII=";
    name = "leggedrobotics-xpp-5527b2820247c712dba622872a15f0242c2c60ed";
  });
in
{
  xpp = pkg "sha256-o7pRgC0V4tObF34zu4ZKDWHct3z5D7NrnySs9PjnyYE=" "xpp";
  xpp_examples = pkg "sha256-PpyjBX1+7MvPo3hOUsOdgnSi84MgcGAJYxkUIHyIfsA=" "xpp_examples";
  xpp_hyq = pkg "sha256-MlgPqAXIWfZ+S/1u17CCaqUkw3Yi6bsTVA86CTvdUaY=" "robots/xpp_hyq";
  xpp_msgs = pkg "sha256-as6DQ6JwbUTT3pJpV7Uf0k6+mM2q0M+gjGsQShT+NNM=" "xpp_msgs";
  xpp_quadrotor = pkg "sha256-IzqI3I16uhtlIMIfOrzGhD8+YdeJA5psofm0JmMrW9I=" "robots/xpp_quadrotor";
  xpp_states = pkg "sha256-nR+AQQ7p95gkgvM8ytrybW9SevE4fRC/kko5uygKTPI=" "xpp_states";
  xpp_vis = pkg "sha256-AHVyk9igM9Bt87Es87HfMaDs530HGaX05Obv1uehiJg=" "xpp_vis";
}
