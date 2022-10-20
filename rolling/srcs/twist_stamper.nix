{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "joshnewans";
    repo = "twist_stamper";
    rev = "838b2713a8c0dea4538029f02fe5135faec77f95";
    hash = "sha256-b7wDaMyBadQAZkd8ktjawSREJ/1F+0d0i1NnrfvVgcY=";
    name = "joshnewans-twist_stamper-838b2713a8c0dea4538029f02fe5135faec77f95";
  });
in
{
  twist_stamper = pkg "sha256-b7wDaMyBadQAZkd8ktjawSREJ/1F+0d0i1NnrfvVgcY=" ".";
}
