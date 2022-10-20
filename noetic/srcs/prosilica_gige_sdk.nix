{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "prosilica_gige_sdk";
    rev = "32aea9be0de7e40c647166d5f54de09948635b9f";
    hash = "sha256-cX85yiPAgi7o6+4ejYv642BsMbesKjHlXtP3ZJ4bkQM=";
    name = "ros-drivers-prosilica_gige_sdk-32aea9be0de7e40c647166d5f54de09948635b9f";
  });
in
{
  prosilica_gige_sdk = pkg "sha256-cX85yiPAgi7o6+4ejYv642BsMbesKjHlXtP3ZJ4bkQM=" ".";
}
