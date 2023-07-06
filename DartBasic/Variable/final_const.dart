// 변수를 변경할 생각이 없다면, var 대신 final이나 const를 사용하거나, 지정한 타입에 추가하여 사용하세요.
// final 변수는 오직 한 번만 설정될 수 있습니다; const 변수는 컴파일 타임 상수입니다 (const 변수는 내부적으로 final입니다).

final name = 'Bob'; // 타입 어노테이션이 없음
final String nickname = 'Bobby';

// final 변수의 값은 변경할 수 없습니다.
name = "Alice"; // Error

// 컴파일 타임 상수인 변수를 생성할 때 const를 사용하세요. 
// const 변수가 클래스 레벨의 변수라면, static const로 표시하세요. 
// 변수를 선언할 때, 숫자, 문자열 리터럴, 상수 변수, 또는 상수 숫자에 대한 산술 연산의 결과 같은 값들은 컴파일 타임 상수로 선언하세요:

const bar = 1000000; // 압력의 단위 (dynes/cm2)
const double atm = 1.01325 * bar; // 표준 대기

// const 키워드는 상수 변수를 선언할 때만 쓰이는 것이 아닙니다. 
// 상수 값 을 만드는 데 사용할 수 있을 뿐만 아니라, 상수 값을 만드는 생성자를 선언할 수도 있습니다.
// 모든 변수는 상수 값을 가질 수 있습니다.

var foo = const [];
final bar = const [];
const baz = []; // 'const []'와 동일 

// const 값을 가진 var로 선언한 변수는 값을 변경할 수 있지만, const나 final로 선언된 변수의 값은 변경할 수 없습니다.


// 타입 체크와 캐스트 (is 그리고 as), 컬렉션 if, 그리고 전개 연산자 (... 그리고 ...?)를 사용하는 상수 정의가 가능합니다:
const Object i = 3; // i는 정수 값을 가지는 const Object입니다.
const list = [i as int]; // 타입 캐스트를 사용하세요.
const map = {if (i is int) i: 'int'}; // is와 컬렉션 if를 사용하세요.
const set = {if (list is List<int>) ...list}; // ...를 사용하여 전개.
