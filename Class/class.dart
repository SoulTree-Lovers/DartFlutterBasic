class Spacecraft {
  String name;
  DateTime? launchDate;

  // Read-only non-final 프로퍼티
  int? get launchYear => launchDate?.year;

  // 멤버 할당에 신택틱 슈가를 사용한 생성자
  Spacecraft(this.name, this.launchDate) {
    // 여기에 초기화 코드가 이어집니다.
  }

  // 디폴트 생성자로 포워드하는 Named 생성자.
  Spacecraft.unlaunched(String name) : this(name, null);

  // 메서드.
  void describe() {
    print('Spacecraft: $name');
    // Getter에는 타입 프로모션이 작동하지 않습니다.
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

void main() {
  Spacecraft spacecraft = Spacecraft("승민", DateTime.now());
  spacecraft.describe();
}
