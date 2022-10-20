{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "davidfischinger";
    repo = "haf_grasping";
    rev = "56bab86dcd431aa046abae7ff51ebc761012ca1e";
    hash = "sha256-sl/TmApdnOej1AleXGk3hMBBCAP0poBi7wvCVWwLgwg=";
    name = "davidfischinger-haf_grasping-56bab86dcd431aa046abae7ff51ebc761012ca1e";
  });
in
{
  haf_grasping = pkg "sha256-sl/TmApdnOej1AleXGk3hMBBCAP0poBi7wvCVWwLgwg=" ".";
}
