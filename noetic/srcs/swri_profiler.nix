{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "swri-robotics";
    repo = "swri_profiler";
    rev = "5d8fd4ef9604c8038dadf885c70864de5f4194e8";
    hash = "sha256-JfDAndYWYEpCEioEniFlLxMCvdVpJNoPzDzhr/pqCfY=";
    name = "swri-robotics-swri_profiler-5d8fd4ef9604c8038dadf885c70864de5f4194e8";
  });
in
{
  swri_profiler = pkg "sha256-qOoJ03sjU2FSyX6zdrg6vEvMcnN0mZvpcf32l4w02PQ=" "swri_profiler";
  swri_profiler_msgs = pkg "sha256-Z/lTDATfvF26DGIF+IYW6N54P1NYKD1MdxEMT95muqI=" "swri_profiler_msgs";
  swri_profiler_tools = pkg "sha256-sz4KZc9NYkFu55vuBmgV0ee6zqCb6Tu1X1iqT+FLNOw=" "swri_profiler_tools";
}
