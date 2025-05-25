import 'loan.dart';

class LoanProcessingSystem {
  List<Loan> _loans = [];

  void applyLoan(Loan loan) {
    _loans.add(loan);
    print('Loan added for ${loan.borrowerName}');
  }

  void calculateInstallments(int months) {
    for (var loan in _loans) {
      double installment = loan.calculateMonthlyInstallment(months);
      print(
          '${loan.borrowerName}\'s monthly installment over $months months: \$${installment.toStringAsFixed(2)}');
    }
  }
}
