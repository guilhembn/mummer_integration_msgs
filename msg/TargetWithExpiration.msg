geometry_msgs/PointStamped target
duration duration  #  in sec, 0 is infinite, the target will end only on regexp
string regex_end_condition  # if "", the target will only expire on duration

# If both duration and regex_end_condition are set, target will expire when the regexp or the duration will be verifed.