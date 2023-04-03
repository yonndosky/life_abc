import 'element_actives.dart';
import 'elements.dart';

int age = 0,
    workingtime = 0,
    salary = 0,
    retire = 65,
    passedaway = 100,
    retiredBudget = 0,
    plan = 0;

void setElementListeners() {
  questionsec1();
  questionsec2();
  questionsec3();
}

void questionsec1() {
  ieNowAge.addEventListener('input', (event) {
    age = int.tryParse('${ieNowAge.value}') ?? 0;
    setEAnswerABC(age, workingtime, salary);
  });
  ieWorkAge.addEventListener('input', (event) {
    workingtime = int.tryParse('${ieWorkAge.value}') ?? 0;
    setEAnswerABC(age, workingtime, salary);
  });
  ieSalary.addEventListener('input', (event) {
    salary = int.tryParse('${ieSalary.value}') ?? 0;
    setEAnswerABC(age, workingtime, salary);
  });
}

void questionsec2() {
  ieRetire.addEventListener('input', (event) {
    retire = int.tryParse('${ieRetire.value}') ?? 0;
    setAnswerTotal(retire, passedaway, retiredBudget, plan, age);
    //setTimeBar(age, retire, died);
  });
  iePassedAway.addEventListener('input', (event) {
    passedaway = int.tryParse('${iePassedAway.value}') ?? 0;
    setAnswerTotal(retire, passedaway, retiredBudget, plan, age);
    //setTimeBar(age, retire, died);
  });
}

void questionsec3() {
  ieRetireBudget.addEventListener('input', (event) {
    retiredBudget = int.tryParse('${ieRetireBudget.value}') ?? 0;
    setAnswerTotal(retire, passedaway, retiredBudget, plan, age);
  });
  iePlan.addEventListener('input', (event) {
    plan = int.tryParse('${iePlan.value}') ?? 0;
    setAnswerTotal(retire, passedaway, retiredBudget, plan, age);
  });
}
