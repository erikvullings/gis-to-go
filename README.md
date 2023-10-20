# GIS-to-go

Simple standalone GIS environment to setup some open source GIS tools locally:

- [MapTiler](https://www.maptiler.com/): to serve vector tiles.
- [Nominatim](https://nominatim.org/): Open-source geocoding with OSM data, for querying the maps to find a locations.
- [Valhalla](https://valhalla.github.io/valhalla/): Valhalla is an open source routing engine.

## Preparation

```bash
cp ./example.env ./.env
./initialize.sh
```

- Copy the `example.env` to `.env` and edit the area that you want to process. For example, use `COUNTRIES="netherlands belgium germany"` to generate a single map covering these three countries. By default, just Monaco is used. Just make sure that the name matches with the name using in [GeoFabrik](https://download.geofabrik.de/), since the OSM data is downloaded from there.
- Run `./initialize.sh`: it will prepare the volumes for the map tiles, fill Nominatim's PostgreSQL database, and prepare the Valhalla data.

## Running the setup

To start the docker compose setup, run:

```bash
./start.sh
```

It runs the following services:

- NGINGX as a reverse proxy
- [MapTiler to serve maps](http://localhost/maptiler)
- [Valhalla UI](http://localhost/valhalla)
- [NOMINATIM API](http://localhost/nominatim), e.g. test `curl http://localhost/nominatim/search?q=Monaco&format=json&addressdetails=1&limit=1&polygon_svg=1` if the Monaco database is loaded.
