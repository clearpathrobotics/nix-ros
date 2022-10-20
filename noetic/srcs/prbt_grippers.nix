{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PilzDE";
    repo = "prbt_grippers";
    rev = "0e24b015c41f590d7745d9682deef65374b78404";
    hash = "sha256-nVW7a8dw6EiuKuU8q45SLweKeHTReQkbu/KZ2JlHEJo=";
    name = "PilzDE-prbt_grippers-0e24b015c41f590d7745d9682deef65374b78404";
  });
in
{
  prbt_grippers = pkg "sha256-fLyHAnipXvJrwYHBE8HPkAkyi/It9eLmqujUnrGU4X4=" "prbt_grippers";
  prbt_pg70_support = pkg "sha256-zLVcjlgy5yM7XETklBaRdnyZsXgocUz4x+yboDEBL34=" "prbt_pg70_support";
}
