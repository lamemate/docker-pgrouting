CREATE TABLE noaa_weather_data
(
  id SERIAL NOT NULL,
  noaa_grid_data_id BIGINT NOT NULL,
  windchill NUMERIC,
  wind_speed NUMERIC,
  atmosphere_humidity NUMERIC,
  atmosphere_pressure NUMERIC,
  temperature NUMERIC,
  cloudage NUMERIC,
  minimum_air_ground_temperature NUMERIC,
  maximum_wind_speed NUMERIC,
  precipitation_depth NUMERIC,
  sunshine_duration NUMERIC,
  snow_height NUMERIC,
  forecast_date TIMESTAMP WITH TIME ZONE NOT NULL,
  PRIMARY KEY (noaa_grid_data_id, forecast_date),
  FOREIGN KEY (noaa_grid_data_id) REFERENCES noaa_grid_data (id)
);
