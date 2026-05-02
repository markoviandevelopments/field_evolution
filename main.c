//hello
#include <stdio.h>
#include <stdlib.h>

int write_to_file(){
    const char *filename = "output.txt";
    const char *message = "Hello World!";
    // Write to file
    FILE *file = fopen(filename, "w");
    if (file == NULL) {
        perror("Error opening file");
        return EXIT_FAILURE;
    }
    fprintf(file, "%s", message);
    fclose(file);
    return EXIT_SUCCESS;
}


int main(){
    write_to_file();
    printf("File Complete!\n");
}
