import 'dart:html';

import 'elements.dart';
import 'module.dart';

void setEAnswerABC(age, start, salary) {
  bool isGetAge = age != 0;
  bool isGetStart = start != 0;
  bool isGetSalary = salary != 0;
  if (isGetAge && isGetStart && isGetSalary) {
    final int totalSalary = ((age - start) * salary) * 12;
    final financialManagement = calculate30percent(totalSalary);

    querySelector('#aABC')?.text = '總計薪水:$totalSalary';
    querySelector('#aFinancialManagement')?.text = '投資理財:$financialManagement';
  }
  else
  {
    querySelector('#aABC')?.text = '';
    querySelector('#aFinancialManagement')?.text = '';
  }
}

void setAnswerTotal(retire, passedaway, retiredBudget, plan, age) {
  bool getRetire = retire != 0;
  bool getPassedAway = passedaway != 0;
  bool getRetiredBudget = retiredBudget != 0;
  bool getPlan = plan != 0;
  bool getAge = age != 0;
  if (getRetire && getPassedAway && getRetiredBudget && getPlan && getAge) {
    querySelector('#aRetireBudget')?.text = '$retiredBudget';

    final double rate = 0.08;
    final int workingAge = retire - age;
    querySelector('#aWorkingAge')?.text = '$workingAge';
    querySelector('#aWorkingYears')?.text = '8年';

    final double needsave = (retiredBudget * (passedaway - retire) / workingAge);
    querySelector('#aSavePerMonth')?.text = '${needsave.round()}';

    final int year = retire - age - 8;
    final int total = getTotalSaved(getSavedMoney(plan), rate, year);
    querySelector('#aTotalSaved')?.text = '$total萬';
    querySelector('#aLave')?.text = '0';

    final int afterRetireCostPerDay = getRetiredBudgetPerDay(total, rate);
    querySelector('#aRetiredBudgetPerDay')?.text = '$afterRetireCostPerDay萬';

    document.getElementById('planselected')!.text ='$plan';
  }
  else
  {
    querySelector('#aRetireBudget')?.text = '';
    querySelector('#aWorkingAge')?.text = '';
    querySelector('#aWorkingYears')?.text = '';
    querySelector('#aSavePerMonth')?.text = '';
    querySelector('#aTotalSaved')?.text = '';
    querySelector('#aLave')?.text = '';
    querySelector('#aRetiredBudgetPerDay')?.text = '';
    document.getElementById('planselected')!.text ='';
  }
}

void setTimeBar(age, retire, died) {
  bool isGetAge = age != 0;
  bool isGetRetire = age != 0;
  bool isGetDied = age != 0;

  if (isGetAge && isGetRetire && isGetDied) {
    peBar.value = retire;
    peBar.max = died;
  }
}
