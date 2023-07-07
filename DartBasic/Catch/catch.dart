// 예외를 Catching 또는 capturing 하는 것은 예외가 전파되는 것을 막아줍니다 (막지 않는다면 예외를 rethrow 합니다).
// 예외를 캐치하면 해당 예외를 처리할 수 있습니다:

void do_try() {
  print("do_try");
}

void do_exception() {
  print("do_exception");
}

void main() {
  try {
    do_try();
  } on Exception {
    do_exception();
  }
}
