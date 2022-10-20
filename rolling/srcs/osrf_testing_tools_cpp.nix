{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "osrf";
    repo = "osrf_testing_tools_cpp";
    rev = "330849044357701c83ce2222845e045eb3c622bf";
    hash = "sha256-oIBf/BTj7RVp6o0ZER0qPLTt3zP/goBk1Q302xpwlgI=";
    name = "osrf-osrf_testing_tools_cpp-330849044357701c83ce2222845e045eb3c622bf";
  });
in
{
  osrf_testing_tools_cpp = pkg "sha256-IS1QB+JmtBcBjQCOq8GKuN0l75C+OZsjVBLtUfDH9Ro=" "osrf_testing_tools_cpp";
  test_osrf_testing_tools_cpp = pkg "sha256-I5Bhu02CVK49TDL6OUDa1Qg3UdRiAIevivBXcd9hLMQ=" "test_osrf_testing_tools_cpp";
}
