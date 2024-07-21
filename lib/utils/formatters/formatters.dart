import 'package:intl/intl.dart';

class Formatters {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yYYY')
        .format(date); // Customize the date format as needed
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$')
        .format(amount); // Customize the cur
  }

  static String formatPhoneNumber(String phoneNumber) {
// Assuming a 10-digit US phone number format: (123) 456-7890
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
// Add more custom phone number formatting logic for different formats if needed.
    return phoneNumber;
  }

  static String internationalFormatPhoneNumber(String phoneNumber) {
    // Supprimer les caractères non numériques du numéro de téléphone
    String digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Ajouter le code du pays (+1 pour les États-Unis, par exemple)
    String countryCode = '+${digitsOnly.substring(0, 1)}';
    digitsOnly = digitsOnly.substring(1);

    // Construire le numéro formaté
    final formattedNumber = StringBuffer();
    formattedNumber.write('$countryCode ');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 3;
      if (countryCode == '+1' && i == 0) {
        groupLength = 3;
      } else {
        groupLength = 2;
      }
      int end = i + groupLength;
      if (end > digitsOnly.length) {
        end = digitsOnly.length;
      }
      formattedNumber.write(digitsOnly.substring(i, end));
      i = end;
      if (i < digitsOnly.length) {
        formattedNumber.write(' ');
      }
    }
    return formattedNumber.toString();
  }
}
