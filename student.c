#include <stdio.h>
<<<<<<< HEAD
#include <string.h>
#include "student.h"

void input_student(Student *s) {
    printf("Enter student name: ");
    fgets(s->name, MAX_NAME_LEN, stdin);
    s->name[strcspn(s->name, "\n")] = 0;
    printf("Enter student marks: ");
    scanf("%f", &s->marks);
    while (getchar() != '\n');
}

void calculate_grade(Student *s) {
    if (s->marks >= 89)
        s->grade = 'A';
    else if (s->marks >= 75)
        s->grade = 'B';
    else if (s->marks >= 60)
        s->grade = 'C';
    else if (s->marks >= 50)
        s->grade = 'D';
    else
        s->grade = 'F';
}

void save_student_to_file(Student *s, const char *filename) {
    FILE *fp = fopen(filename, "a");
    if (!fp) {
        perror("File open failed");
        return;
    }
    fprintf(fp, "%s,%.2f,%c\n", s->name, s->marks, s->grade);
    fclose(fp);
}

void display_student(Student *s) {
    printf("Name: %s | Marks: %.2f | Grade: %c\n", s->name, s->marks, s->grade);
=======
#include "student.h"

void input_student(Student *s) {
    printf("Enter student ID: ");
    scanf("%d", &s->id);
    printf("Enter student name: ");
    scanf("%s", s->name);
    for (int i = 0; i < 3; i++) {
        printf("Enter grade %d: ", i + 1);
        scanf("%f", &s->grades[i]);
    }
}

void print_student(const Student *s) {
    printf("\nStudent ID: %d\n", s->id);
    printf("Name: %s\n", s->name);
    printf("Grades: %.2f, %.2f, %.2f\n", s->grades[0], s->grades[1], s->grades[2]);
>>>>>>> 9948b04 (added test-2 files)
}
