{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "githubuser0xFFFF";
    repo = "Qt-Advanced-Docking-System";
    rev = "6444e7424fcf571eb6168be53c481e5e44115af9";
    hash = "sha256-Rid/A2oLKMMZ1buLzaCaeu6NymTUoLoPjffpVArrRw8=";
    name = "githubuser0xFFFF-Qt-Advanced-Docking-System-6444e7424fcf571eb6168be53c481e5e44115af9";
  });
in
{
  QtADS = pkg "sha256-Rid/A2oLKMMZ1buLzaCaeu6NymTUoLoPjffpVArrRw8=" ".";
}
