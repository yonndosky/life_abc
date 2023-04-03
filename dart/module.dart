import 'dart:math';

int calculate30percent(int totalSalary) => (totalSalary * 0.3).round();

int getRetiredBudgetPerDay(total, rate) => (total * (0 + rate) / 12).round();

int getTotalSaved(money, rate, year) => (money * pow(1 + rate, year)).round();

int getSavedMoney(int option) {
  //判斷選擇了每個月要存m，存了n年之後有n*m萬
  switch (option) {
    case 6000:
      return 76;
    case 12000:
      return 158;
    case 18000:
      return 241;
    case 24000:
      return 321;
    default:
      return 0;
  }
}
