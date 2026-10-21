# Dart Exercises - Week 9 Object-Oriented Programming with Dart Funadamentals

**Name: Jeslyn Kyl Sesma 
**Section: 3.3 BSIT 
**Course: NTC_PC16 - Mobile Development w/ Lab

---

## Description:
A console-based Dart program that models a 'Student' class using object-oriented principles.

## OOP Concepts Applied
- **Class and fields:**`Student` has `studentID`, `name`, `program`, and a private `_grades` field.
- **Constructor:** `Student(this.studentID, this.name, this.program)` sets the initial values.
- **Encapsulation:** `_grades` is private. It is read through the `grades` getter, which returns an unmodifiable view, and updated through `addGrade()` and `removeGrade()` with validation (0-100).
- **Map:** `_grades` is a `Map<String, double>` storing subject and grade pairs.
- **List:** `main()` stores multiple `Student` objects in a `List<Student>`.
- **Methods:** `addGrade()`, `removeGrade()`, `computeAverage()`, `standing`, and `showReport()`.

## How to Run
1. Open [DartPad](https://dartpad.dev).
2. Copy the contents of `week9_student_oop.dart` into the editor.
3. Click **Run**.

Alternatively, with the Dart SDK installed:
```bash
dart run week9_student_oop.dart
```

