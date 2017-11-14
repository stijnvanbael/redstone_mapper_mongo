library mongodb_service;

Map sample(int size) => {
      '\$sample': {'size': size}
    };

Map match(Map<String, dynamic> query) => {'\$match': query};

Map geoNear(Map<String, dynamic> near, String distanceField, {bool spherical = false, int limit = 100}) => {
      '\$geoNear': {
        'near': near,
        'spherical': spherical,
        'limit': limit,
        'distanceField': distanceField,
      }
    };
