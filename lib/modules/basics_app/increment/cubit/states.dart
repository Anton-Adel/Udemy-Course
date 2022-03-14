abstract class incrementstates {

}


class InitialsState extends incrementstates{}


class MinusState extends incrementstates{
final int num;

  MinusState(this.num);

}

class PlusState extends incrementstates{
  final int num;

  PlusState(this.num);
}
