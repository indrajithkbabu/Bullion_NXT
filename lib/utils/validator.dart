class ValidatorsHelper {
  static String? validateMobile(String? value) {
    const pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    final regExp = RegExp(pattern);
    if (value!.isEmpty) {
      return 'Please enter the mobile number';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter a valid mobile number';
    }
    return null;
  }
static String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter the password';
  }

  // // Check password length
  // if (value.length < 8) {
  //   return 'Password must be at least 8 characters long';
  // }

  // // Check for at least one capital letter
  // if (!RegExp(r'^(?=.*[A-Z])').hasMatch(value)) {
  //   return 'Password must contain at least one uppercase letter';
  // }

  // // Check for at least one number
  // if (!RegExp(r'^(?=.*[0-9])').hasMatch(value)) {
  //   return 'Password must contain at least one number';
  // }

  // // Check for at least one special character
  // if (!RegExp(r'^(?=.*[!@#\$%\^&\*])').hasMatch(value)) {
  //   return 'Password must contain at least one special character';
  // }

  return null;
}
  // static String? validateAccountNumber(String? value) {
  //   const pattern = r'(^(?:[+0]9)?[0-9]{8,17}$)';
  //   final regExp = RegExp(pattern);
  //   if (value!.isEmpty) {
  //     return 'Please enter the account number';
  //   } else if (!regExp.hasMatch(value)) {
  //     return 'Please enter a valid account number';
  //   }
  //   return null;
  // }

  // static String? validateAccountNumberConfirmation(
  //     String? accountNumber,
  //     String? accountNumberConfirmation,
  //     ) {
  //   if (accountNumberConfirmation?.isEmpty ?? true) {
  //     return 'Please confirm the account number';
  //   } else if (accountNumber != accountNumberConfirmation) {
  //     return "Account numbers don't match";
  //   }
  //   return null;
  // }

  // static String? validateIfscCode(String? value) {
  //   const pattern = r'^[A-Z]{4}[0][A-Z0-9]{6}$';
  //   final regExp = RegExp(pattern);
  //   if (value!.isEmpty) {
  //     return 'Please enter the ifsc code';
  //   } else if (!regExp.hasMatch(value)) {
  //     return 'Please enter a valid ifsc code';
  //   }
  //   return null;
  // }

  static String? validateStoreName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your store name';
    }
    return null;
  }

  static String? validateCity(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your branch name';
    }
    return null;
  }
  //  static String? validatePassword(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Please enter your branch name';
  //   }
  //   return null;
  // }

  // static String? validatePassportNumber(String? value) {
  //   // const pattern = r'(^(?!^0+$)[a-zA-Z0-9]{3,20}$)';
  //   const indianPattern = r'([A-PR-WYa-pr-wy][1-9]\d\s?\d{4}[0-9]$)';
  //   final regExp = RegExp(indianPattern);
  //   if (value!.isEmpty) {
  //     return 'Please enter the passport number';
  //   } else if (!regExp.hasMatch(value)) {
  //     return 'Please enter a valid passport number';
  //   }
  //   return null;
  // }

  // static String? validateAadharCard(String? value) {
  //   const pattern = r'(^[2-9]{1}\d[0-9]{10}$)';
  //   final regExp = RegExp(pattern);
  //   if (value!.isEmpty) {
  //     return 'Please enter the aadhar number';
  //   } else if (!regExp.hasMatch(value)) {
  //     return 'Please enter a valid aadhar number';
  //   }
  //   return null;
  // }

  // static String? validatePancard(String? value) {
  //   const pattern = r'([A-Z]{5}[0-9]{4}[A-Z]{1}$)';
  //   final regExp = RegExp(pattern);
  //   if (value!.isEmpty) {
  //     return 'Please enter the pancard number';
  //   } else if (!regExp.hasMatch(value)) {
  //     return 'Please enter a valid pancard number';
  //   }
  //   return null;
  // }

  // static String? validateName(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Please enter your name';
  //   }
  //   if (value.length < 3) {
  //     return 'Name must be at least 3 characters long';
  //   }
  //   if (value.length > 30) {
  //     return 'Name must be less than or equal to 30 characters long';
  //   }
  //   return null;
  // }

  // static String? validateDob(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Please enter your Date of Birth';
  //   }
  //   return null;
  // }

  // static String? validateEmail(String? value) {
  //   const pattern = r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$';
  //   final regExp = RegExp(pattern);
  //   if (value == null || value.isEmpty) {
  //     return 'Please enter an email address';
  //   } else if (!regExp.hasMatch(value)) {
  //     return 'Please enter a valid email address';
  //   }
  //   return null;
  // }

  // static String? validateGender(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Please select Gender';
  //   }
  //   return null;
  // }

  // static String? validateFavoriteRegion(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Please enter region';
  //   }
  //   return null;
  // }

  // static String? validateTitleAndContent(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Required field';
  //   }
  //   return null;
  // }

  // static String? validateOtp(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Please enter the OTP';
  //   }
  //   if (value.length != 6) {
  //     return 'Please fill all the fields';
  //   }

  //   return null;
  // }
}
