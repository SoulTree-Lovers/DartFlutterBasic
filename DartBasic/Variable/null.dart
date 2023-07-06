// Nullable 타입을 가지는 초기화되지 않은 변수는 초기 값으로 null을 가질 수 있습니다.
// Dart의 다른 모든 것과 마찬가지로 숫자도 객체이기 때문에, 숫자 타입의 변수도 처음에는 null 입니다.
int? lineCount;
assert(lineCount == null);


// Null 안전성을 활성화 했다면, non-nullable 변수를 사용하기 전에 값들을 초기화해야만 합니다:
int lineCount = 0;


// 지역 변수를 선언과 동시에 초기화 할 필요는 없지만, 사용하기 전에 값을 할당해야 합니다. 
// 예를 들어, 다음 코드는 lineCount가 print()로 전달될 때까지 null이 아님을 알 수 있기 때문에 유효합니다:
int lineCount;

if (weLikeToCount) {
  lineCount = countLines();
} else {
  lineCount = 0;
}

print(lineCount);
