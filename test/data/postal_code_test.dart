import 'package:flutter_test/flutter_test.dart';
import 'dart:convert';

import 'package:future_provider_practice/data/postal_code.dart';

void main() {
  String jsonData = '''
  {
  "code": "1000014",
  "data": [
    {
      "prefcode": "13",
      "ja": {
        "prefecture": "東京都",
        "address1": "千代田区",
        "address2": "永田町",
        "address3": "",
        "address4": ""
      },
      "en": {
        "prefecture": "Tokyo",
        "address1": "Chiyoda-ku",
        "address2": "Nagatacho",
        "address3": "",
        "address4": ""
      }
    }
  ]
}
''';

  test('fromJson', () async {
    var data = json.decode(jsonData);

    PostalCode res = PostalCode.fromJson(data);

    expect(res.code, '1000014');
  });
}
