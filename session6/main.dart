import 'loan.dart';
import 'loan_processing_system.dart';

void main() {
  LoanProcessingSystem system = LoanProcessingSystem();

  system.applyLoan(PersonalLoan("Nada", 10000));
  system.applyLoan(HomeLoan("Adam", 600000));
  system.applyLoan(CarLoan("Ali", 55000));

  system.calculateInstallments(12);
}




