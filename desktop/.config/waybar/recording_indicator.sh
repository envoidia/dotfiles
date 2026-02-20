#!/usr/bin/env bash
if [[ -n $(pgrep -f gpu-screen-recorder) ]]; then
    echo '{"text": "  REC"}'
else
    echo '{"text": ""}'
fi