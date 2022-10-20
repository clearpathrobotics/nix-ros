{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "ros_comm";
    rev = "dd78ac8af128bb8eb992d6431bb9f994658ea6ab";
    hash = "sha256-N+ZIaQ3SAgodb/1+ZEsio2IFgjEWLHnQ95GEbDViG8s=";
    name = "ros-ros_comm-dd78ac8af128bb8eb992d6431bb9f994658ea6ab";
  });
in
{
  message_filters = pkg "sha256-iojVQdmD9hPz1R+PE3+4EwrexJlTvb/Tnv2cmJJD4KM=" "utilities/message_filters";
  ros_comm = pkg "sha256-Ppvl6tdWaUYL0K1WC1+lTLaQWgFyyJGuyY3cin/F5YI=" "ros_comm";
  rosbag = pkg "sha256-uy0Y6i6NEsGcqp7yPcmmtBTrHN2iUXHWFwswqH0X6nw=" "tools/rosbag";
  rosbag_storage = pkg "sha256-jBwxT7KjJ6VTHdxAKNhqZx358ZUHh5TbQWhUs2T3Sbk=" "tools/rosbag_storage";
  roscpp = pkg "sha256-6YvEtW65uhdEV9KeDI1S6ACQ6d2e+htvvFh6YRDP/Mw=" "clients/roscpp";
  rosgraph = pkg "sha256-WsuZBr+EmDwu8auUGkkBV++j3NmCfII4NcHmdEXO+6Y=" "tools/rosgraph";
  roslaunch = pkg "sha256-SEN6TK47FZ/u7Fkrqhx4WiWwcixvfzx+2Yx1NwKwP9U=" "tools/roslaunch";
  roslz4 = pkg "sha256-/I75LDXWcvtYF+dDnCeebR/goHKGVeu2txkGVy1pOFE=" "utilities/roslz4";
  rosmaster = pkg "sha256-XZg050J7EOlg5kOz1aA3QxDLfhLHQeBuMizqlW/u3zw=" "tools/rosmaster";
  rosmsg = pkg "sha256-KPgJGOg5zZNX0Del4SR+mXcylfcY3ssgIuoPQg5EiFU=" "tools/rosmsg";
  rosnode = pkg "sha256-jfAWnDWuuVOwHIGYfPohChNgYIYJbasuq1QTacSm0jg=" "tools/rosnode";
  rosout = pkg "sha256-67h2laiuDGp0whKE/v49AL09iZb2peRWdkEVzsp/5o8=" "tools/rosout";
  rosparam = pkg "sha256-tuBIyRQTfG2zw+zk2TtKCrVEiLEP3UY4Imgikn0cfEY=" "tools/rosparam";
  rospy = pkg "sha256-9t9virxxH7xORaF7pGV+LgV5fwBBs856KSrnVKZ1MLQ=" "clients/rospy";
  rosservice = pkg "sha256-RDfQc44JzMYgDLiXq9DZqCKlIm4ZWC0JIgXmIjEMYwE=" "tools/rosservice";
  rostest = pkg "sha256-5ZYpW5JuLjGx/8GVR54Mn99Lvshi13y9Guct26UfqHs=" "tools/rostest";
  rostopic = pkg "sha256-AaqXzuvFe4JGou8g9wUt4/b/yHD+yt9NruySrdQxnXc=" "tools/rostopic";
  roswtf = pkg "sha256-7RHhTVBfipFtGltat3dcUrTdtXRa9vzTOh4mgEGqgAI=" "utilities/roswtf";
  test_rosbag = pkg "sha256-eQ1NQ5QR+kYCN4N/VXEIQIKLQfOl5YM78z5HAD5NuaM=" "test/test_rosbag";
  test_rosbag_storage = pkg "sha256-xCrQqilyFBUH4T0bAAgl+O/WmSGNjyd4/GM4xaUD9DQ=" "test/test_rosbag_storage";
  test_roscpp = pkg "sha256-3gWi01qKgmc/57CkziLtyTEOHLgYvdIeJS42Ndtm9nQ=" "test/test_roscpp";
  test_rosgraph = pkg "sha256-inoUiel0jwO89brdFG+1Qq4Vn/l1E/hgvUv8e3+dj2s=" "test/test_rosgraph";
  test_roslaunch = pkg "sha256-OCiptlPUc75QtvPc5gRgJJC+RDKplnWsdvSbpz73/2g=" "test/test_roslaunch";
  test_roslib_comm = pkg "sha256-dXt1wCxfpaUFqrBrrNWVxo2OyUioCN7OYCKpz5hpKCE=" "test/test_roslib_comm";
  test_rosmaster = pkg "sha256-TJkAfEmW3x2h+QSbKr4rdRCD3CsOO3oVZCMJvyaN79s=" "test/test_rosmaster";
  test_rosparam = pkg "sha256-ow24DExzOuaMmBZl14fRJtOxGV3H3kvqP016nDuPNBA=" "test/test_rosparam";
  test_rospy = pkg "sha256-NDIpByp50loyQJuMNJL0e2chfQJd31w6A5eHMZpOLhw=" "test/test_rospy";
  test_rosservice = pkg "sha256-xzIV4RrFyzyaNUyGOBwnr3GqaN77l7IWDSzZ+sy7HIk=" "test/test_rosservice";
  test_rostest = pkg "sha256-l4+8+Z8Fr3g+HyxF7TcmLyKQjtvRZareuHShNfbBTAQ=" "test/test_rostest";
  test_rostopic = pkg "sha256-vxsUuhNF+I3kf4C0m/CNf9VrwyDb1MtbCfURFAAoj/A=" "test/test_rostopic";
  topic_tools = pkg "sha256-1ECEhrjJdwd0w8xakADGtwirpuSm4FU+QHoiTuzcj5c=" "tools/topic_tools";
  xmlrpcpp = pkg "sha256-jk12T/h+EC/NpuVcKmpi5g/fmPTwZVokYNsUw3q05g8=" "utilities/xmlrpcpp";
}
