amixer sget Master | grep "Mono: Playback" | awk  '{print $4}' | tr -d '[]'
