abstract class Loan {
  String borrowerName;
  double loanAmount;
  double interestRate;

  Loan(this.borrowerName, this.loanAmount, this.interestRate);

  double calculateMonthlyInstallment(int months);
}

class PersonalLoan extends Loan {
  PersonalLoan(String borrowerName, double loanAmount)
      : super(borrowerName, loanAmount, 0.10);

  @override
  double calculateMonthlyInstallment(int months) {
    double totalAmount = loanAmount + (loanAmount * interestRate);
    return totalAmount / months;
  }
}

class HomeLoan extends Loan {
  HomeLoan(String borrowerName, double loanAmount)
      : super(borrowerName, loanAmount, loanAmount > 500000 ? 0.095 : 0.08);

  @override
  double calculateMonthlyInstallment(int months) {
    double totalAmount = loanAmount + (loanAmount * interestRate);
    return totalAmount / months;
  }
}

class CarLoan extends Loan {
  CarLoan(String borrowerName, double loanAmount)
      : super(borrowerName, loanAmount, 0.07);

  @override
  double calculateMonthlyInstallment(int months) {
    double processingFee = loanAmount > 50000 ? loanAmount * 0.02 : 0;
    double totalAmount = loanAmount + (loanAmount * interestRate) + processingFee;
    return totalAmount / months;
  }
}
