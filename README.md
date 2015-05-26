# EEA Art17 mapviewer 
aka Art17 mapserver

Purpose: To provide a WMS service for the Art. 17 consultation tool of 2008.
Service location: http://art17mapserver.eionet.europa.eu/

## Deploy

Host prerequisites: [Docker](https://docs.docker.com/installation/)

Run the application:

`docker run -d -p 6000:80 -v /media/art17mapviewer_data/art17mapviewer:/var/local --name art17mapviewer eeacms/eea.docker.art17mapviewer`

Now the application is running on port 5000 on the host and the files are stored on the host at `/media/art17mapviewer_data/art17mapviewer`.

Visit the `http://localhost:6000` to see the application running.
