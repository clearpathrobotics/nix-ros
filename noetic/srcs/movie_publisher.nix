{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "peci1";
    repo = "movie_publisher";
    rev = "581786c2611531318c90a378315915f0cadbeba6";
    hash = "sha256-tSfS7N3J1x/CtxS8uk8NcQxbKjkj17nk14q7hfj5+Fs=";
    name = "peci1-movie_publisher-581786c2611531318c90a378315915f0cadbeba6";
  });
in
{
  movie_publisher = pkg "sha256-tSfS7N3J1x/CtxS8uk8NcQxbKjkj17nk14q7hfj5+Fs=" ".";
}
