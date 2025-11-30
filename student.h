#ifndef STUDENT_H
#define STUDENT_H

<<<<<<< HEAD
#define MAX_NAME_LEN 100

typedef struct {
    char name[MAX_NAME_LEN];
    float marks;
    char grade;
} Student;

void input_student(Student *s);
void calculate_grade(Student *s);
void save_student_to_file(Student *s, const char *filename);
void display_student(Student *s);

#endif
=======
#define MAX_NAME_LEN 50

typedef struct {
    int id;
    char name[MAX_NAME_LEN];
    float grades[3];
} Student;

void input_student(Student *s);
void print_student(const Student *s);

#endif // STUDENT_H
>>>>>>> 9948b04 (added test-2 files)
