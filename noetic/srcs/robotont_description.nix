{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "robotont";
    repo = "robotont_description";
    rev = "39f6dc3dd452f275c8b49b64d80333336c6db584";
    hash = "sha256-jT/rmUG7UA79Fx6nxn6Ky5GMlteOcZfwS/vHN6t+ogI=";
    name = "robotont-robotont_description-39f6dc3dd452f275c8b49b64d80333336c6db584";
  });
in
{
  robotont_description = pkg "sha256-jT/rmUG7UA79Fx6nxn6Ky5GMlteOcZfwS/vHN6t+ogI=" ".";
}
