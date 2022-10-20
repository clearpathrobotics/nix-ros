{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "open-rmf";
    repo = "pybind11_json_vendor";
    rev = "1f9198767935d4a0ef32f9ae8cda5a17c2ec429b";
    hash = "sha256-wb8raQjIdMbQfnyGJeCid60h48KDWvYIX1t1elsXs7k=";
    name = "open-rmf-pybind11_json_vendor-1f9198767935d4a0ef32f9ae8cda5a17c2ec429b";
  });
in
{
  pybind11_json_vendor = pkg "sha256-wb8raQjIdMbQfnyGJeCid60h48KDWvYIX1t1elsXs7k=" ".";
}
