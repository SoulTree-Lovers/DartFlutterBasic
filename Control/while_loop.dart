bool isDone = false;

void main() {
  // 일반적인 while loop
  while (!isDone) {
    doSomething();
  }

  // do-while loop
  // 내부 실행 후 조건 검사
  do {
    doSomething();
  } while (!isDone);
}

void doSomething() {
  print("do");
  isDone = true;
}
