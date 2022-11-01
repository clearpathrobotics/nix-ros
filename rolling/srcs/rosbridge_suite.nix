{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "RobotWebTools";
    repo = "rosbridge_suite";
    rev = "7af3683ec6a02b1569d7e3c42367721b0be2ac78";
    hash = "sha256-bdBkfC9Rm7Nx6ok0a+YjIY+DuH79ShDz5fgDNicpPYc=";
    name = "RobotWebTools-rosbridge_suite-7af3683ec6a02b1569d7e3c42367721b0be2ac78";
  });
in
{
  rosapi = pkg "sha256-xyStRT/4J+A6f1qaIk41X5un6h8s/aFEGdHcIQofWHg=" "rosapi";
  rosapi_msgs = pkg "sha256-Q4dTs68oi8RWGF2fto9PtQNCnoH23yoHPnNZkMLJBRE=" "rosapi_msgs";
  rosbridge_library = pkg "sha256-X1NBkXbAeIrNxDraCPw7HBmiZAGsqNAWwQpRU5xLd84=" "rosbridge_library";
  rosbridge_msgs = pkg "sha256-fa8a7XqxoY7IgwXCc994LiFABO2+hCdOVKmPRxpT3PQ=" "rosbridge_msgs";
  rosbridge_server = pkg "sha256-9ZEuYgm9SsCvZbTmPbCNpnyLaCSqhug6euq1z3YlEqs=" "rosbridge_server";
  rosbridge_suite = pkg "sha256-GCCnTrZrj1fE7QXPG5N1kyb5GiaunUe6YsYLdnGRJJ8=" "rosbridge_suite";
  rosbridge_test_msgs = pkg "sha256-QbIObUjU3gN7gPnoKMc6Yu+ZEnUDP+vtpzT81rjq2xg=" "rosbridge_test_msgs";
}
