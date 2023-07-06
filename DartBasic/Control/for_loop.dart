void main() {
  // 문자열 버퍼에 값 써 놓고 출력
  var message = StringBuffer('Dart is fun');

  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  print(message);

  // callback 함수 리스트에 저장 후 실행
  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }

  for (final c in callbacks) {
    c();
  }

  // forEach statement
  var collection = [1, 2, 3];
  collection.forEach(print); // 1 2 3
}
