import 'package:formz/formz.dart';
import 'package:iottive/constant/constant.dart';
import 'package:iottive/enum/enum.dart';

class EmailAddress
    extends FormzInput<String, TextFormFieldEmptyAndInvalidValidationType> {
  const EmailAddress.pure(super.value) : super.pure();

  const EmailAddress.dirty({String value = ''}) : super.dirty(value);
  static final _emailAddressRegExp = RegExp(regExpEmailAddress);

  @override
  validator(String value) {
    if (value.isEmpty) {
      return TextFormFieldEmptyAndInvalidValidationType.empty;
    } else if (!_emailAddressRegExp.hasMatch(value)) {
      return TextFormFieldEmptyAndInvalidValidationType.invalid;
    }
    return null;
  }
}
