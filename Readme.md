# Sequelize PostGIS

Postgres image for Sequelize with support for essential extensions

## Known Issues / Errors

If you encounter errors due to PostGIS update

```bash
OperationalError: could not access file "$libdir/postgis-X.X"
```

Run

```bash
docker exec postgres-95 update-sequelize-db.sh
```

