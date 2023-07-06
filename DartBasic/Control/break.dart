void main() {
  // break
  while (true) {
    if (wantBreak()) break;
    print("do something");
  }

  // continue
  List candidates = ["H", "E", "L", "L", "O"];
  for (int i = 0; i < candidates.length; i++) {
    if (candidates[i] == "E") {
      continue;
    }
    print(candidates[i]);
  }
}

bool wantBreak() {
  return true;
}
