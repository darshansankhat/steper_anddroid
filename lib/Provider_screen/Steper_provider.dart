import 'package:flutter/foundation.dart';

class Steper_provider extends ChangeNotifier
{
  int i=0;

  void Nextstep()
  {
    if(i<9)
    {
      i++;
    }
    notifyListeners();
  }
  void prestep()
  {
    if(i>0)
    {
      i--;
    }
    notifyListeners();
  }

}