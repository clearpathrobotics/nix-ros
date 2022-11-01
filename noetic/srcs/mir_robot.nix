{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "dfki-ric";
    repo = "mir_robot";
    rev = "5a44ff5593dc48f9ec74c0e83d15ed9dec33069e";
    hash = "sha256-jnrCXO15T0RxqeuaOG5LP3XWE1FeGwcoDhk9BiTra/8=";
    name = "dfki-ric-mir_robot-5a44ff5593dc48f9ec74c0e83d15ed9dec33069e";
  });
in
{
  mir_actions = pkg "sha256-FnVQbWFaCRnZzhK+xvoXGcJkJSryssYfyQp8TejlXWI=" "mir_actions";
  mir_description = pkg "sha256-2hjKBIwpVYdT2VfBYHOOlrxTOgdc+WIYxVBI/4o4aZs=" "mir_description";
  mir_driver = pkg "sha256-y4RVHenYydMUPUrAQtyJXJAoFuzhdD2fOCpH1/+skT4=" "mir_driver";
  mir_dwb_critics = pkg "sha256-TYR11UI1UBrMaIi53gsb4xW7HHWGVXqMOWNxwVBNl9o=" "mir_dwb_critics";
  mir_gazebo = pkg "sha256-1nz3e/CmQcWirdp/VXACN3YxPP3kPM02vY5cOPion6s=" "mir_gazebo";
  mir_msgs = pkg "sha256-XwMB3wTPtO429iEmnnCMM0AOQhb7Ip54Rvqr4KQE8u8=" "mir_msgs";
  mir_navigation = pkg "sha256-7RQ9d1T00YI7GAlENuHTsiTi8qqCSFk+ALE73xpI8Cw=" "mir_navigation";
  mir_robot = pkg "sha256-yLCHquilWkajblxmgb6pll48Eqoq5hjhjUT/wGGgs8g=" "mir_robot";
  sdc21x0 = pkg "sha256-n44Iy0oKHNl6ygRCS7LDbgmvlVrjLQxKr8dsp0ShiQ0=" "sdc21x0";
}
