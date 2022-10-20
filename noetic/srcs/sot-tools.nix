{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "stack-of-tasks";
    repo = "sot-tools";
    rev = "f94949f20cfed165c2a03c02d7ceb22666293edb";
    hash = "sha256-IDH2L23Mq9Ah1VSNQnbyGygoVGd660DNZZ8iInnwk74=";
    name = "stack-of-tasks-sot-tools-f94949f20cfed165c2a03c02d7ceb22666293edb";
  });
in
{
  sot-tools = pkg "sha256-IDH2L23Mq9Ah1VSNQnbyGygoVGd660DNZZ8iInnwk74=" ".";
}
