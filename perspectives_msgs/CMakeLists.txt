cmake_minimum_required(VERSION 2.8.3)
project(perspectives_msgs)

find_package(catkin REQUIRED COMPONENTS geometry_msgs message_generation std_msgs)

add_message_files(
  DIRECTORY msg
  FILES
  Agent.msg
  AgentArray.msg
  AgentArrayStamped.msg
  Fact.msg
  FactArray.msg
  FactArrayStamped.msg
  Object.msg
  ObjectArray.msg
  ObjectArrayStamped.msg
  Perspective.msg
  PerspectiveArray.msg
  PerspectiveArrayStamped.msg)

add_service_files(
  DIRECTORY srv
  FILES
  EndFact.srv
  GetAllFacts.srv
  HasMesh.srv
  StartFact.srv)

generate_messages(DEPENDENCIES geometry_msgs std_msgs)

catkin_package(CATKIN_DEPENDS geometry_msgs message_runtime std_msgs)
