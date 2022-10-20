{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "ros2cli";
    rev = "ef64926bda65e6339637656c6d512757dddb83e6";
    hash = "sha256-Axgb3LfsjpGf6W7F9/mhswJddQZ7BItlJUCzEq+fi4A=";
    name = "ros2-ros2cli-ef64926bda65e6339637656c6d512757dddb83e6";
  });
in
{
  ros2action = pkg "sha256-FceGxMpHlWGvyY+zELCpncSsGhC9kKeBaBsmpa4eFVA=" "ros2action";
  ros2cli = pkg "sha256-KiHLUvGfhJPjavxIoTYcgbI+29oo60BffP+p8akDqwg=" "ros2cli";
  ros2cli_test_interfaces = pkg "sha256-XkVhWKVL2FkLPC5btPpajx4GP0Kt06LyjPt7qVHcqWY=" "ros2cli_test_interfaces";
  ros2component = pkg "sha256-9+CVLoYbEmYmDfrM6riUl2QkMb3tb9y6ul7RPt8fD18=" "ros2component";
  ros2doctor = pkg "sha256-ACPDu1YDSREWEj4NHM85HQOhfXrpBcCS/MCEItpfCHw=" "ros2doctor";
  ros2interface = pkg "sha256-RylZEzv/djGyl4p6x7Al18+UYtZ7doUYwhpd2cA/IxQ=" "ros2interface";
  ros2lifecycle = pkg "sha256-vf7ZgXtkXEg+EQ8EXLfnBnrlNVvOeYNAm6ZKUORsVns=" "ros2lifecycle";
  ros2lifecycle_test_fixtures = pkg "sha256-xKhiDnvwd7gKzSaNKNKTr0nhdYgpyO97Us1IqwP8y2s=" "ros2lifecycle_test_fixtures";
  ros2multicast = pkg "sha256-znwokWqfOVa15as/BPUX8+gxtZ5sm7dMEeLObp3la/U=" "ros2multicast";
  ros2node = pkg "sha256-4pKPFkSUrhWZhYHB1Xf92BxOAaW4GGWM5ywwG/t7Tuo=" "ros2node";
  ros2param = pkg "sha256-XMP82Yy8T3b404lNwVwbRSWJT4bgcNAQwWe7tY0YynE=" "ros2param";
  ros2pkg = pkg "sha256-j0hWMJ7rUXnBZsWaVsTz4tm7fw2kcPzgkoBnfbcEIN8=" "ros2pkg";
  ros2run = pkg "sha256-55UCJg4ggVzRbQOrLxnDVjTqD7r9UZKCOHPjJ68MbwA=" "ros2run";
  ros2service = pkg "sha256-NAz8tkUpeWer5TCJcS72RPIo/v5HKT1g9BUXIDb0b2M=" "ros2service";
  ros2topic = pkg "sha256-d6wqp714jvVyGKO0ezxmwaq39IOUbZhxWg82Actz92Q=" "ros2topic";
}
