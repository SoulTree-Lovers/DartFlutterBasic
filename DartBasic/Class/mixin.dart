// Mixins은 다수의 클래스 계층에서 클래스의 코드를 재사용 할 수 있는 방법입니다.
// Mixins은 일괄적인 멤버 구현을 제공합니다.
// 한 개 이상의 mixin 이름과 함께 with 키워드를 적용하여 mixin을 사용하세요.
// 다음 코드처럼 with 키워드와 사용 할 mixin의 이름을 명시하면 됩니다:
class Player {
  void play() {
    print("경기하는 중...");
  }
}

class BasketBallPlayer extends Player {
  @override
  void play() {
    super.play();
    print("농구경기 하는 중...");
  }
}

class FootBallPlayer extends Player {
  @override
  void play() {
    super.play();
    print("풋살경기 하는 중...");
  }
}

class BaseBallPlayer extends Player {
  @override
  void play() {
    super.play();
    print("야구경기 하는 중...");
  }
}

//경기하는  중...
//농구경기 하는 중...
mixin CanRun {
  void run() {
    print("뛰는 중...");
  }
}

mixin CanJump {
  void jump() {
    print("점프하는 중...");
  }
}

mixin CanShoot {
  void shoot() {
    print("슈팅하는 중...");
  }
}

class Striker extends FootBallPlayer with CanRun, CanJump, CanShoot {
  @override
  void play() {
    run();
    shoot();
    jump();
  }
}

//뛰는 중...
//슈팅하는 중...
//점프하는 중...

class Pitcher extends BaseBallPlayer with CanRun, CanJump {
  @override
  void play() {
    run();
    jump();
  }
}

//뛰는 중...
//점프하는 중...

void main() {
  var p1 = Striker();
  var p2 = Pitcher();

  p1.play();
  p2.play();
}
