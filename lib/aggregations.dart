library mongodb_service;

Map sample(int size) {
  return {
    '\$sample': {'size': size}
  };
}

Map geoNear(Map<String, dynamic> near, String distanceField, {bool spherical = false, int limit = 100}) {
  return {
    '\$geoNear': {
      'near': near,
      'spherical': spherical,
      'limit': limit,
      'distanceField': distanceField,
    }
  };
}
