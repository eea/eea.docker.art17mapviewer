# EEA Art17 mapviewer 
aka Art17 mapserver

Purpose: To provide a WMS service for the Art. 17 consultation tool of 2008.
Service location: http://art17mapserver.eionet.europa.eu/

## Deploy

Host prerequisites: [Docker](https://docs.docker.com/installation/)

Run the application:

`docker run  --restart=always -d -p <port_host>:80 -v /media/art17mapviewer_data/art17mapviewer:/var/local --name art17mapviewer eeacms/eea.docker.art17mapviewer`

Now the application is running on port 50001 on the host and the files are stored on the host at `/media/art17mapviewer_data/art17mapviewer`.

Visit the `http://localhost:<port_host>` to see the application running.

current port_host = 50001
