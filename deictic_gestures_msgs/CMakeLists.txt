cmake_minimum_required(VERSION 2.8.3)
project(deictic_gestures_msgs)

find_package(catkin REQUIRED COMPONENTS geometry_msgs message_generation std_msgs actionlib_msgs)

#add_message_files(
#  DIRECTORY msg
#  FILES)

add_service_files(
  DIRECTORY srv
  FILES
  GetPointingConfig.srv
  LookAt.srv
  PointAt.srv)

#add_action_files(
#  FILES
#  ShowAt.action)

generate_messages(DEPENDENCIES geometry_msgs std_msgs actionlib_msgs)

catkin_package(CATKIN_DEPENDS geometry_msgs message_runtime std_msgs actionlib_msgs)
