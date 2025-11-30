#include <stdio.h>
<<<<<<< HEAD
#include <stdlib.h>
#include "student.h"

#define DATA_FILE "students.txt"

int main() {
    int choice;
    Student s;

    while (1) {
        printf("\n--- Student Grade Manager ---\n");
        printf("1. Add Student\n");
        printf("2. Exit\n");
        printf("Choose an option: ");
        scanf("%d", &choice);
        getchar();

        switch (choice) {
            case 1:
                input_student(&s);
                calculate_grade(&s);
                display_student(&s);
                save_student_to_file(&s, DATA_FILE);
                break;
            case 2:
                printf("Goodbye!\n");
                exit(0);
            default:
                printf("Invalid choice. Try again.\n");
        }
    }

=======
#include "menu.h"
#include "student.h"

int main(void) {
    Student students[10];
    int count = 0;
    show_menu(students, &count);
>>>>>>> 9948b04 (added test-2 files)
    return 0;
}
