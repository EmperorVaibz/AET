%%Cooridinate array
T = readtable("worldcities.csv");
cityarr=T.Var1;
countryarr=T.country;
T(1:5,1:5)

%%Setting coordinates
city1="Istanbul";
country1="Turkey";
city2="Lagos";
country2="Nigeria";
indc1=1;
indc2=2;
for k = 1:numel(cityarr)
    if cityarr{k}==city1&&countryarr{k}==country1
        indc1=k;
    end
end
for k = 1:numel(cityarr)
    if cityarr{k}==city2&&countryarr{k}==country2
        indc2=k;
    end
end

latstart=T{indc1,"lat"};
lonstart=T{indc1,"lng"};
latend=T{indc2,"lat"};
lonend=T{indc2,"lng"};

%Calculating the distance
distance=6371*acos(sin(latstart/(180/pi))*sin(latend/(180/pi))+cos(latstart/(180/pi))*cos(latend/(180/pi))*cos(lonstart/(180/pi)-lonend/(180/pi)));

%Drawing the map
figure
geoplot([latstart,latend],[lonstart,lonend],'-*')
geobasemap streets