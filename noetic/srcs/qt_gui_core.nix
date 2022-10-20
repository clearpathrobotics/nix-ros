{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "qt_gui_core";
    rev = "9147631f5f21f77e1f8e1f3ad884b5e96a8e22e4";
    hash = "sha256-zWe1a7gTnehiha9jHWcq1ZvaCZC+O/WBQdJJ1QYUKl4=";
    name = "ros-visualization-qt_gui_core-9147631f5f21f77e1f8e1f3ad884b5e96a8e22e4";
  });
in
{
  qt_dotgraph = pkg "sha256-MbpYV7Fpqhmb6bu7ewcpGtq4PRdmi7xqPwijzcHcVB8=" "qt_dotgraph";
  qt_gui = pkg "sha256-mNlr6DM+GgQnWGpCS0U48FeT5BEkl3GQJMfe5Ob+kUQ=" "qt_gui";
  qt_gui_app = pkg "sha256-QfY8JDMyFqSDdBHHCjgN+bZlzGDa4JURhG4dIo+xBII=" "qt_gui_app";
  qt_gui_core = pkg "sha256-QDxefiJPJ8ZYOXbtuFWQqBsOVf/KL/cWaIZkwwK1Gns=" "qt_gui_core";
  qt_gui_cpp = pkg "sha256-kzonjMtTkzVFE8OAR+d6I98STdO5c2QQ4e0tkd+URlY=" "qt_gui_cpp";
  qt_gui_py_common = pkg "sha256-2yMtgHqznBuNz54qDq4qUtjvZTKj0KisJc+tKbaLjmk=" "qt_gui_py_common";
}
