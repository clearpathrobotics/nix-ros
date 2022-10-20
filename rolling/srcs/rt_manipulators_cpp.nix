{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "rt-net";
    repo = "rt_manipulators_cpp";
    rev = "c101965aaf1321730929e303e181ec9f004495d2";
    hash = "sha256-y8nvWpuuc7HxKwstCej3rD2Ilj/HH12fztr7wVGPZcE=";
    name = "rt-net-rt_manipulators_cpp-c101965aaf1321730929e303e181ec9f004495d2";
  });
in
{
  rt_manipulators_cpp = pkg "sha256-YUJkRUHMLukwe5vyCr9kFhmmkkBb/ezgelg3SKIop3w=" "rt_manipulators_lib";
  rt_manipulators_examples = pkg "sha256-dHVhmshZaD7z/hfD5tLkvXw6mehXEQSlivgKwLZ4YZM=" "rt_manipulators_examples";
}
