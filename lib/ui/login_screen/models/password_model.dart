import 'package:formz/formz.dart';
import 'package:iottive/enum/enum.dart';

class Password
    extends FormzInput<String, TextFormFieldEmptyAndInvalidValidationType> {
  const Password.pure(super.value) : super.pure();

  const Password.dirty({String value = ''}) : super.dirty(value);

  @override
  validator(String value) {
    if (value.isEmpty) {
      return TextFormFieldEmptyAndInvalidValidationType.empty;
    }
    return null;
  }
}
