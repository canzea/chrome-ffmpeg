# chrome-ffmpeg

```
docker network create \
  --driver=bridge \
  --subnet=4.0.0.0/16 \
  --ip-range=4.0.5.0/24 \
  vlanX
  
docker run -d --net=vlanX -e "STREAM_URL=rtmp://167.99.231.62:1935/live/abc" --name selenium canzea/chrome-ffmpeg:latest
```
