{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "jackal";
    repo = "jackal_simulator";
    rev = "f72ffe1c160db5595dc033b323eb924abec539c4";
    hash = "sha256-WDtlZQJWScbpPT5fRVzSYzCtvfHBqrUu+Rv7HyfZdzQ=";
    name = "jackal-jackal_simulator-f72ffe1c160db5595dc033b323eb924abec539c4";
  });
in
{
  jackal_gazebo = pkg "sha256-Q2AGmvi2h5fUsGMYzhQVAgW62umb6gPdpixVBMDOvyk=" "jackal_gazebo";
  jackal_simulator = pkg "sha256-XS3UbgAnUqZXLJkaAlp+N6AMNlPetcCqCdHusgrNEB0=" "jackal_simulator";
}
