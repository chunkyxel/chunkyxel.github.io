Media for the showcase (edit `src/content/media.json`).

Prefer video over GIF (10x smaller, sharper):
  ffmpeg -i in.mov -c:v libvpx-vp9 -crf 32 -b:v 0 -an demo-1.webm
  ffmpeg -i in.mov -c:v libx264 -crf 22 -pix_fmt yuv420p -movflags +faststart -an demo-1.mp4
  ffmpeg -i in.mov -vf "scale=1280:-1:flags=neighbor" -frames:v 1 poster.png   # pixel art: use neighbor scaling
Animated WebP fallback: ffmpeg -i in.mov -vf "fps=24,scale=960:-1:flags=neighbor" -loop 0 demo.webp
