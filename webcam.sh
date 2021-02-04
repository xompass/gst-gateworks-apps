#!/bin/bash

./bin/gst-variable-rtsp-server -H 0.0.0.0 "v4l2src device=/dev/video0 ! videoconvert ! videorate ! video/x-raw,width=640,framerate=30/1 ! x264enc ! rtph264pay name=pay0 pt=96"
