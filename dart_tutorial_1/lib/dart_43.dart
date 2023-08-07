void main() {
  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      continue;
    }
    print(i);
  }
  //1 2 3 4 6 7 8 9 10
}

void main() {
  int i = 1;
  while (i <= 10) {
    if (i == 5) {
      i++;
      continue;
    }
    print(i);
    i++;
  } //1 2 3 4 6 7 8 9 10
}
