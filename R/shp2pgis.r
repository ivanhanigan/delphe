# windows version.  creates a .bat file and prints a SQL command to run on the database once completed
shp2pgis <- function(infile,d='postgis',u='postgres',host='localhost',srid=4283,schema='public',
                     pgutils = 'C:\\pgutils\\'){
  cat(paste("\"",pgutils,"shp2pgsql\" -s ",srid," -D %1.shp ",schema,".%1 > %1.sql",sep=""),"\n")
  cat(paste("\"",pgutils,"psql\"  -d ",d," -U ",u," -W -h ",host," -f %1.sql",sep=""),"\n")
  cat('make doshp.bat\n\n')
  cat(paste("doshp.bat ",infile,sep=""))
  cat(paste("\n\nCREATE INDEX idx_",infile,"_the_geom ON ",schema,".",infile," USING gist(the_geom);\n",sep=""))
  cat(paste("VACUUM ANALYZE ",schema,".",infile,";\n",sep=""))
  
  cat(paste("CREATE INDEX \"",infile,"_gist\"
            ON ",schema,".",infile,"
            USING gist
            (the_geom);
            ALTER TABLE ",schema,".",infile," CLUSTER ON \"",infile,"_gist\";\n",sep=""))
  
  
  if (srid!=4283){	             
    cat(
      sprintf("SELECT AddGeometryColumn('%s','%s','gda94_geom',4283,'MULTIPOLYGON',2);
              ALTER TABLE %s.\"%s\" DROP CONSTRAINT enforce_geotype_gda94_geom;
              UPDATE %s.\"%s\" SET gda94_geom=ST_Transform(the_geom,4283);",
              tolower(schema),tolower(infile),tolower(schema),tolower(infile),tolower(schema),tolower(infile))
    )                     
  }
  
  
}
