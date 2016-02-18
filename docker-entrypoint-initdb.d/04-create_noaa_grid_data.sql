CREATE TABLE noaa_grid_data
(
  id SERIAL PRIMARY KEY NOT NULL,
  latitude NUMERIC NOT NULL,
  longitude NUMERIC NOT NULL,
  geom_grid GEOMETRY(LineString,4326) NOT NULL
);
