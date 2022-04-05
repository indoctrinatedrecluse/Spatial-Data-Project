/** Before this step, I converted my kml file to a shapefile and used the Shapefile import/export tool in PostGIS to
    import the resulating shapefile group as a table in POSTGreSQL, named "primer-point" */

/** Computing Convex Hull and Returning as KML */
SELECT ST_AsKML(ST_GeomFromText(ST_AsText(ST_ConvexHull(ST_Collect(geom))),4326))
FROM "primer-point";

/** Computing Nearest Neighbour and returning as KML */
SELECT ST_AsKML(ST_GeomFromText(ST_AsText(ST_MakeLine(geom)),4326)) FROM (
	SELECT name, gid, geom
	FROM "primer-point"
	ORDER BY geom <-> (SELECT geom FROM "primer-point" WHERE name='Apartment')
	LIMIT 2) neighbours;

/** Computing the Centroid for the Convex Hull (or, to be more accurate, the set of points, as hull implies lines) */
SELECT ST_AsKML(ST_GeomFromText(ST_AsText(ST_Centroid(ST_Collect(geom))),4326))
FROM "primer-point";