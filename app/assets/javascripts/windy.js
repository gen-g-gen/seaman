const options = {
  // Required: Your API key
  key: 'dg9iqVCWPGhl33svfmvZDDhNK9Z9gtwX',

  // Optional: Initial state of the map
  // 名古屋駅を中心に表示
  lat: 35.18565,
  lon: 139.21130,
  zoom: 4,
};

// Initialize Windy API
windyInit(options, windyAPI => {
    const { map } = windyAPI;
    // .map is instance of Leaflet map
});
