{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "fkie";
    repo = "async_web_server_cpp";
    rev = "5fd37c0ec0910a7d7ac287f9bbabb0b988af8b75";
    hash = "sha256-7SnhyXZS3ELWkvxgi+gIjHCdnCp6tlYOCmlQXbe2Y2g=";
    name = "fkie-async_web_server_cpp-5fd37c0ec0910a7d7ac287f9bbabb0b988af8b75";
  });
in
{
  async_web_server_cpp = pkg "sha256-7SnhyXZS3ELWkvxgi+gIjHCdnCp6tlYOCmlQXbe2Y2g=" ".";
}
