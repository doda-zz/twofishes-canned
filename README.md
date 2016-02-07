This is the foursquare's twofishes geocoder compiled with "world data" for you ready-to-run inside a Docker image.

This cost me about $100 to run on AWS, but it's free for you!


**Warning! This runs docker with `--privileged` in order to open up the "sysctl -w vm.max_map_count=131060" call required by twofishes**
    
    
```
$ sudo docker run --privileged doda/twofishes-geocoder
```

Congrats you may now geocode to your hearts content:

```
$ TWOFISHES=$(sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}' $(sudo docker ps -q))
$ curl http://$TWOFISHES:8081/?query=Twatt,Scotland
```
```
{
    "interpretations": [
        {
            "feature": {
                "attributes": {
                    "population": 0,
                    "urls": [
                        "http://en.wikipedia.org/wiki/Twatt%2C_Shetland"
                    ]
                },
                "cc": "GB",
                "displayName": "Twatt, Shetland Islands, United Kingdom",
                "geometry": {
                    "center": {
                        "lat": 60.26667,
                        "lng": -1.41667
                    }
                },
...
```

For some reason I couldn't get the JVM to run this well on a machine smaller than 8GB of RAM. Outside Docker 4GB seem to suffice.

Check out the [twofishes docs](https://github.com/foursquare/twofishes) for further usage info.
