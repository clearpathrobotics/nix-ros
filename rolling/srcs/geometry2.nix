{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "geometry2";
    rev = "de08d177d424f0d73efd4ff5951fd1eaabc9638d";
    hash = "sha256-7E994hoMOQoOZ+up8UFVg3GMaCu/mQkwIqj0VP6CDv4=";
    name = "ros2-geometry2-de08d177d424f0d73efd4ff5951fd1eaabc9638d";
  });
in
{
  examples_tf2_py = pkg "sha256-vSqcwctL56IKAcep88pdfluHXox29YfYYRhakffG9oA=" "examples_tf2_py";
  geometry2 = pkg "sha256-USumq/bElLE+KXbjk8ymZYXlarTyji1JtICiDMY7/x0=" "geometry2";
  test_tf2 = pkg "sha256-bzHPbBanQ5p3HjgFFm3wwlisAUVqyeKpUpghD3GBHFI=" "test_tf2";
  tf2 = pkg "sha256-ajZS6glPBUrTF/yQglxXdBgua3LT0nvEQ5Fs/g4nzEY=" "tf2";
  tf2_bullet = pkg "sha256-H/8leKa+DoUGpL2lU7Bfr5JrmuwqR6dJekOElGUXSD8=" "tf2_bullet";
  tf2_eigen = pkg "sha256-yLqRgEMp/ZOxF1AR+84gHP/TL4xa3/7MQy1TFJalIGY=" "tf2_eigen";
  tf2_eigen_kdl = pkg "sha256-1NvRPdKnIoQ/rJS1lTOxOeWfCTc+f+qD0jm4ZilSxbM=" "tf2_eigen_kdl";
  tf2_geometry_msgs = pkg "sha256-qHLiGdMKBHoQXXHZk9Mc8E6OCYHvj4tHt6roFa9dQzE=" "tf2_geometry_msgs";
  tf2_kdl = pkg "sha256-56CuwMkgyRqp5V0oxJKHZIBBcbOJTYYPuAk6rQOtAvI=" "tf2_kdl";
  tf2_msgs = pkg "sha256-ftPWJZ0UJ0WfxONC7tmigACAEm0ihVz9xOzl9YsTHvs=" "tf2_msgs";
  tf2_py = pkg "sha256-yB2kO7oe300WHJZiz9pzkQ4+iaSlTCd+sbrM5sxzVRc=" "tf2_py";
  tf2_ros = pkg "sha256-wI0l4zhqTPX/rH7neeY0nd0mKf8NCgJs0yumTPAT8Ak=" "tf2_ros";
  tf2_ros_py = pkg "sha256-ob5ozWAQBjAZvAlYYDH5Ii4iOg5rpuDBxhqW5ANrb+s=" "tf2_ros_py";
  tf2_sensor_msgs = pkg "sha256-D2G/8dfLY2ufbxuH/QBwCxmfbwPNYDeHDcgALD+er2Q=" "tf2_sensor_msgs";
  tf2_tools = pkg "sha256-SO5U8ZaACfM+extzxPMkV8TSEnx8orXVH0o79zKrUrQ=" "tf2_tools";
}
