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

Prepare the data container:

```
# docker run -d --name art17mapviewer_data eeacms/var_local_data
```

Dump application and data from donor host

```
# docker run --rm --volumes-from=eeadockerart17mapviewer_home_1 -v $(pwd):/backup busybox tar cvzfp /backup/art17mapviewer_data.tar.gz /var/local/GIS
```


import application and data to target host

```
# docker run --rm --volumes-from=art17mapviewer_data -v $(pwd):/backups busybox tar zxvf /backups/art17mapviewer_data.tar.gz
```

Run already installed application:

```
# cd eea.docker.art17mapviewer
# docker-compose up -d
```

Now the application is running on port specified in the docker-compose file and the files are stored in the art17mapviewer_data data container
