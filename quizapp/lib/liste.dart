import 'test.dart';

class Liste {
  int _questionNumber = 0;

  final List<Test> _listeQuestion = [
    Test('Some cats are actually allergic to humans', true),
    Test('You can lead a cow down stairs but not up stairs.', false),
    Test('Approximately one quarter of human bones are in the feet.', true),
    Test('A slug\'s blood is green.', true),
    Test('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Test('It is illegal to pee in the Ocean in Portugal.', true),
    Test(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Test(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Test(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Test(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Test('Google was originally called \"Backrub\".', true),
    Test(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Test(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  void questionSuivante() {
    if (_questionNumber < _listeQuestion.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestion() {
    return _listeQuestion[_questionNumber].question;
  }

  bool getReponse() {
    return _listeQuestion[_questionNumber].reponse;
  }

  bool isFinished() {
    if (_questionNumber >= _listeQuestion.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
