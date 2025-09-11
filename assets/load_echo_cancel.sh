#!/bin/bash

# chmod +x load_echo_cancel.sh

# Wait until PulseAudio is ready
sleep 5

# Get the actual mic source name
MIC_SOURCE=$(pactl list short sources | grep analog | awk '{print $2}' | head -n 1)

# Load echo cancel module with fixed volume settings
pactl load-module module-echo-cancel \
  source_name=VirtualMicWithEchoCancel \
  sink_name=VirtualSinkWithEchoCancel \
  source_master=$MIC_SOURCE \
  aec_method=webrtc \
  aec_args="analog_gain_control=0 digital_gain_control=0 voice_detection=0 noise_suppression=1"
