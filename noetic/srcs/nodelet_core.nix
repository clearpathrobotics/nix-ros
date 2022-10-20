{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "nodelet_core";
    rev = "6265cac6bd686a7feb872bba5304f16de4f0fd46";
    hash = "sha256-1pHd65InNnapE7JbPYFu8wO8mlpDpXO3EVi9W8dRjb4=";
    name = "ros-nodelet_core-6265cac6bd686a7feb872bba5304f16de4f0fd46";
  });
in
{
  nodelet = pkg "sha256-yo0LU9CEmfBqdX1UO0qNOntRni4wN1qNUB+PhKMuau4=" "nodelet";
  nodelet_core = pkg "sha256-H8gJzCKPoftRI+f2SlT8VXK3iHtJeyuT8AyNHjDV9Dg=" "nodelet_core";
  nodelet_topic_tools = pkg "sha256-Q+shfl5xArOXwClBO2SpVlph4akYDnM34tbVdcX1pYo=" "nodelet_topic_tools";
  test_nodelet = pkg "sha256-TLROPelt8xeUQA+yAMNEWpbXQaoyaTzNjmyb8ABlgd4=" "test_nodelet";
  test_nodelet_topic_tools = pkg "sha256-IEmWYFnZRj6cvKVXOLedvDTxe75HBnXchxGd6A0AxL0=" "test_nodelet_topic_tools";
}
