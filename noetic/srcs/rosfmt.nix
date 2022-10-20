{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "xqms";
    repo = "rosfmt";
    rev = "e61329c530d708e8497fc146ded1f0dded1fd087";
    hash = "sha256-s/y2oGLMFICizTGk/FHCFmKqowa1cmdZJ1jivkDH5jk=";
    name = "xqms-rosfmt-e61329c530d708e8497fc146ded1f0dded1fd087";
  });
in
{
  rosfmt = pkg "sha256-s/y2oGLMFICizTGk/FHCFmKqowa1cmdZJ1jivkDH5jk=" ".";
}
