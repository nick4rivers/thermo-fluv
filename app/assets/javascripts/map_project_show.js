$(document).on('turbolinks:load', function () {
  $(".static.projects_map").ready(function () {
    var sites = gon.project;
    var zoom = 6;
    var map_center_lat = 44.5;
    var map_center_lon = -120.5;

    console.log(sites.length);
    var Esri_NatGeoWorldMap = L.tileLayer(
      'https://server.arcgisonline.com/ArcGIS/rest/services/NatGeo_World_Map/MapServer/tile/{z}/{y}/{x}', {
        minZoom: 1,
        maxZoom: 16
      }
    );

    var Esri_WorldImagery = L.tileLayer(
      'https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}');

    var baseLayers = {
      'Topography': Esri_NatGeoWorldMap,
      'Imagery': Esri_WorldImagery
    };

    // Create the map
    var leaflet_map = L.map("map_project_show").setView([map_center_lat, map_center_lon], zoom);

    // Add imagery
    Esri_NatGeoWorldMap.addTo(leaflet_map);


    // layer control
    var layer_control = L.control.layers(baseLayers);
    layer_control.addTo(leaflet_map);

    // add scale bar
    L.control.scale().addTo(leaflet_map);

    // project points now
    var Sites = L.featureGroup();

    for (var i = 0; i < sites.length; i++) {
      var marker = L.marker([sites[i].latitude, sites[i].longitude]);
      marker.bindPopup("<p>" +
        sites[i].name +
        "</p>"
      );
      Sites.addLayer(marker);
    }

    // add all projects to map
    Sites.addTo(leaflet_map);

    // fit display to points on the map
    leaflet_map.fitBounds(Sites.getBounds());
  });
});