// FlutterSecureStorage 사용법
/* 
  Flutter와 서버 간 API를 주고 받을 때 사용하는 토큰을 저장하기 위한 용도로 사용할 수 있다.
*/ 

// plugin 설치
// $ flutter pub add flutter_secure_storage


// Import plugin 
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// Create storage
final _storage = const FlutterSecureStorage();

// Read value
String value = await _storage.read(key: key);

// Read all values
Map<String, String> allValues = await _storage.readAll();

// Delete value
await _storage.delete(key = key);

// Delete all
await _storage.deleteAll();

// Write value
await _storage.write(key = key, value = value);

