# EEA Art17 mapviewer 
aka Art17 mapserver

Purpose: To provide a WMS service for the Art. 17 consultation tool of 2008.
Service location: http://art17mapserver.eionet.europa.eu/

## Deploy

Host prerequisites: [Docker](https://docs.docker.com/installation/), [docker-compose] (https://docs.docker.com/compose/install/)

Install the application:

```
# git clone https://github.com/eea/eea.docker.art17mapviewer.git
# cd eea.docker.art17mapviewer
# docker-compose up -d
```

Run already installed application:

```
# cd eea.docker.art17mapviewer
# docker-compose up -d
```

Now the application is running on port specified in the docker-compose file and the files are stored on the host at /media/art17mapviewer_data
