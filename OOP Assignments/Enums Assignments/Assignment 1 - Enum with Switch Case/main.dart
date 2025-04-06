// Assignment 1: Enum with Switch Case
// Create an enum Day with values (Monday, Tuesday, ..., Sunday). Write a function that accepts a day and prints whether it's a Weekday or Weekend using switch-case.

void mian(){
  weekDay weekday = weekDay.Monday;
  switch(weekday){
    case weekDay.Monday: 
    print('Weekday');
    break;

    case weekDay.Tuesday: 
    print('Weekday'); 
    break;
    
    case weekDay.Wednesday: 
    print('Weekday');
    break;
    
    case weekDay.Thursday: 
    print('Weekday'); 
    break;
    
    case weekDay.Friday:
    print('Weekday');
    break;
    
    case weekDay.Saturday: 
    print('Weekend'); 
    break;
    
    case weekDay.Sunday:
    print('Weekend');
    break;
  } 
}

enum weekDay { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }