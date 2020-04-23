const options = {
  // Required: Your API key
  key: 'dg9iqVCWPGhl33svfmvZDDhNK9Z9gtwX',

  // 　平塚中心
  lat: 35.18565,
  lon: 139.21130,
  zoom: 4,
};

// Initialize Windy API
if (document.location.href.match(/waves/)) {
    windyInit(options, windyAPI => {
      const { map } = windyAPI;
      // .map is instance of Leaflet map
  });
};