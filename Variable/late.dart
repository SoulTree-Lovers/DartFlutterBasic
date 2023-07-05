// 변숫값의 설정이 사용 전에 보장되지만 Dart가 동의하지 않는다면, 해당 변수를 late로 표시하여 에러를 해결할 수 있습니다:

late String description;

void main() {
  description = 'Feijoada!';
  print(description);
}

// 다음 예제에서, temperature 변수가 사용되지 않으면, 비싼 함수인 readThermometer()가 호출되지 않습니다:
// 이 프로그램에서 readThermometer()에 대한 유일한 호출입니다.
late String temperature = readThermometer(); // 지연 초기화.