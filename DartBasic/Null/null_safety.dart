// Null-safe Dart에서 아래의 변수들은 null이 될 수 없습니다.
void Foo() {}
String getFileName() {
  return "hello";
}

var i = 42; // int로 추론됨.
String name = getFileName();
final b = Foo();
