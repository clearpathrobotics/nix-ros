{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ihadzic";
    repo = "move_base_swp";
    rev = "676eec55221cc5a451462006f0cf8d6d763f7ffc";
    hash = "sha256-EzfQvjmHhy91QvXNusKsuzd0426oahKjcFp5jT7iBEk=";
    name = "ihadzic-move_base_swp-676eec55221cc5a451462006f0cf8d6d763f7ffc";
  });
in
{
  move_base_swp = pkg "sha256-EzfQvjmHhy91QvXNusKsuzd0426oahKjcFp5jT7iBEk=" ".";
}
