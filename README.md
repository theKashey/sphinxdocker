docker for sphinx
============
Sphinx in an Docker container! In a __single responsibility principle__ mode.
Nothing, but sphinx

#####Build it:#####

```
docker build -t sphinx . 
```

#####Pull it:######

```
docker pull thekashey/sphinxdocker
```

####Run the Container####

Run Sphinx in a 'detached' container (daemonized) like so:
* It will automaticaly starts sphinxd _without_ indexing.
```
docker run -P -v /path/to/local/sphinx/conf:/etc/sphinxsearch/ -d
```

* It will automaticaly starts sphinxd _with_ indexing.
```
docker run -P -v /path/to/local/sphinx/conf:/etc/sphinxsearch/ -d with-indexing
```
* It will execute nothing, but indexing
```
docker run -v /path/to/local/sphinx/conf:/etc/sphinxsearch/ -d only-indexing
```



PS: The ```9306``` is a default port for sphinx.

####Persistent Index Data####
If you want index data to persist through container shutdowns, just add another ```-v /some/directory/:/var/lib/sphinx/data/``` to share a directory on your host machine with the Sphinx data directory within the container.
