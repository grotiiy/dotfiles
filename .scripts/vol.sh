amixer sget Master | grep "Left: Playback" | awk  '{print $5}' | tr -d '[]'
