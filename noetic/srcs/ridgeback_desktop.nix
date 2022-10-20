{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ridgeback";
    repo = "ridgeback_desktop";
    rev = "d2b58f9d985925c0c1d17979cf8a486449ebda41";
    hash = "sha256-YUfTltQLKthDNf+s0qfDNOi8NMlsDpa77JFfqvc3K6U=";
    name = "ridgeback-ridgeback_desktop-d2b58f9d985925c0c1d17979cf8a486449ebda41";
  });
in
{
  ridgeback_desktop = pkg "sha256-wpxw/QqxwWw5diDhCQ3LcuGyGWD6azfj7JxrV0cRDJ8=" "ridgeback_desktop";
  ridgeback_viz = pkg "sha256-cmPQXpFg0+De4WidO70Ej3DazyY2hrRrL7RV0PIwYLU=" "ridgeback_viz";
}
