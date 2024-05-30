%%Cooridinate array
T = readtable("worldcities.csv");
T(1:5,1:5)
latstart=53.32055555555556;
lonstart=-1.7297222222222221;
latend=53.31861111111111;
lonend=-1.6997222222222223;

%Calculating the distance
distance=6371*acos(sin(latstart/(180/pi))*sin(latend/(180/pi))+cos(latstart/(180/pi))*cos(latend/(180/pi))*cos(lonstart/(180/pi)-lonend/(180/pi)));

%Drawing the map
figure
geoplot([latstart,latend],[lonstart,lonend],'-*')
geobasemap streets