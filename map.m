%%Cooridinate array
T = readtable("worldcities.csv");
T(1:5,1:5)

%%Setting coordinates
city1="Istanbul";
city2="Lagos";

latstart=T(city1,"lat");
lonstart=T(city1,"lng");
latend=T(city2,"lat");
lonend=T(city2,"lng");

%Calculating the distance
distance=6371*acos(sin(latstart/(180/pi))*sin(latend/(180/pi))+cos(latstart/(180/pi))*cos(latend/(180/pi))*cos(lonstart/(180/pi)-lonend/(180/pi)));

%Drawing the map
figure
geoplot([latstart,latend],[lonstart,lonend],'-*')
geobasemap streets