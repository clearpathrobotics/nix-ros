{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_py_console";
    rev = "ed656a9b55fbe47b0a2e8b874e1f2665c2b0fa33";
    hash = "sha256-0VrFeEk9W7/cS0jH2HpeiJSvClmwz+2LmBjgD6JhmHA=";
    name = "ros-visualization-rqt_py_console-ed656a9b55fbe47b0a2e8b874e1f2665c2b0fa33";
  });
in
{
  rqt_py_console = pkg "sha256-0VrFeEk9W7/cS0jH2HpeiJSvClmwz+2LmBjgD6JhmHA=" ".";
}
