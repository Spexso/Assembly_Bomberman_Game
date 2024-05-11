#include <stdio.h>
#include <stdlib.h>
#include <windows.h>

void print_grid(char** cur_grid, int sizeGrid);
void fill_grids(char** initial_grid, char** plant_grid, int size);
void plant_initial(char** initial_grid, int size);
void plant_post(char** plant_grid, int size);
void execute_order_66(char** initial_grid, char** plant_grid, int size);
void allocate_memory(char** grid, int sizeof_grid);

int main(){
    
    int sizeof_grid;
    

    printf("Hello johnny...\n");
    Sleep(2000);
    printf("Want to set up the matrix ?\n");
    Sleep(1000);
    printf("Please enter the size => ");
    scanf("%d", &sizeof_grid);

    printf("Size of grid is = %d\n", sizeof_grid);
    /* Memory Allocation */

    char** initialS = NULL;

    // Allocate first level
    initialS = malloc(sizeof_grid * sizeof(char*));
  
    // Check memory allocation of first level
    if( initialS == NULL ){

        printf("Grid allocation failed");
        exit(1);
    } 

    // Allocate second level 
    for (int i = 0; i < sizeof_grid; i++) {

        initialS[i] = malloc(sizeof_grid * sizeof(char));
            
        if (initialS[i] == NULL) {
            // Handle memory allocation error
            printf("Error at allocation!\n");
            exit(1);
        }
    }
    //allocate_memory(initialS, sizeof_grid);

    char** grid = NULL;
    // Allocate first level
    grid = malloc(sizeof_grid * sizeof(char*));
  
    // Check memory allocation of first level
    if( grid == NULL ){

        printf("Grid allocation failed");
        exit(1);
    } 

    // Allocate second level 
    for (int i = 0; i < sizeof_grid; i++) {

        grid[i] = malloc(sizeof_grid * sizeof(char));
            
        if (grid[i] == NULL) {
            // Handle memory allocation error
            printf("Error at allocation!\n");
            exit(1);
        }
    }
    //allocate_memory(grid, sizeof_grid);
    

    fill_grids(initialS, grid, sizeof_grid);

    print_grid(initialS, sizeof_grid);
    print_grid(grid, sizeof_grid);

    
    plant_initial(initialS, sizeof_grid);
    plant_post(grid, sizeof_grid);

    print_grid(initialS, sizeof_grid);
    print_grid(grid, sizeof_grid);


        // Make the bombs go boom
        execute_order_66(initialS, grid, sizeof_grid);
    
    print_grid(initialS, sizeof_grid);
    print_grid(grid, sizeof_grid);

    
    return 0;
}

/* Function to allocate memory for grids */
void allocate_memory(char** grid, int sizeof_grid){

    // Allocate first level
    grid = malloc(sizeof_grid * sizeof(char*));
  
    // Check memory allocation of first level
    if( grid == NULL ){

        printf("Grid allocation failed");
        exit(1);
    } 

    // Allocate second level 
    for (int i = 0; i < sizeof_grid; i++) {

        grid[i] = malloc(sizeof_grid * sizeof(char));
            
        if (grid[i] == NULL) {
            // Handle memory allocation error
            printf("Error at allocation!\n");
            exit(1);
        }
    }

    return;
}


void plant_initial(char** initial_grid, int size){

    /* Plant 5 bombs manually */
    initial_grid[3][5] = '0';
    initial_grid[4][5] = '0';
    initial_grid[5][5] = '0';
    initial_grid[7][2] = '0';
    initial_grid[8][1] = '0';
}


void fill_grids(char** initial_grid, char** plant_grid, int size){
    
    for(int i = 0; i < size; i++){

        for(int j = 0; j < size; j++){

            initial_grid[i][j] = '.';
            plant_grid[i][j] = '.';
        }
    }  

    //printf("Filling done! \n");
}

void plant_post(char** plant_grid, int size){

    for(int i = 0; i < size; i++){

        for(int j = 0; j < size; j++){

            if(plant_grid[i][j] == '.'){

                plant_grid[i][j] = '0';
            }
        }
    }
}


/* Function to print grid */
void print_grid(char** cur_grid, int sizeGrid){

    printf("Printing grid \n");

  for(int i = 0; i < sizeGrid; i++){

    for(int j = 0; j < sizeGrid; j++){

        printf("%c ", cur_grid[i][j]);
    }

    printf("\n");
  }

  printf("\n\n\n"); 
}

void execute_order_66(char** initial_grid, char** plant_grid, int size){

    for(int i = 0; i < size; i++){

        for(int j = 0; j < size; j++){

            if(initial_grid[i][j] == '0'){

                // If bomb found at start cell execute that firstly
                plant_grid[i][j] = '.';

                // Also make friend bombs to explode in (x+1, y) (x-1, y), (x, y-1), (x, y+1)
                // consecutive actions so different if statements
                
                // (x+1, y)
                if(i+1 <= size-1){

                    plant_grid[i+1][j] = '.';
                }
                // (x-1, y)
                if(i-1 >= 0){

                    plant_grid[i-1][j] = '.';
                }
                // (x, y-1)
                if(j-1 >= 0){

                    plant_grid[i][j-1] = '.';
                } 
                // (x, y+1)
                if(j+1 <= size-1){

                    plant_grid[i][j+1] = '.';
                }
            }
        }
    }
}

