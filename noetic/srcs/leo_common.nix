{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "LeoRover";
    repo = "leo_common";
    rev = "feef4ba19ff3f925bd9fc3806b8a85133af76562";
    hash = "sha256-oTt+kEoiPtdbGBWlIYeFpkmEThrm2v2kAk9R0q1OByw=";
    name = "LeoRover-leo_common-feef4ba19ff3f925bd9fc3806b8a85133af76562";
  });
in
{
  leo = pkg "sha256-xj4xR4/QZEn2KAma8jXwYGTSNW/sB627dp7WyXGLvLU=" "leo";
  leo_description = pkg "sha256-RR/2jDPu637k9JVw7NX+QCqli/7v/tj/uUHgWZY6cH8=" "leo_description";
  leo_msgs = pkg "sha256-B0zAatn3pgFkfVpsADr2loRRFO/opKvXxyAKHFXOgew=" "leo_msgs";
  leo_teleop = pkg "sha256-EUjX7qY9NI0XBRiPE5MAh7AkfPLy/M4tRgRvdJUn0+I=" "leo_teleop";
}
