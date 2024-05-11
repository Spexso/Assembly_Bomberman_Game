#include <stdio.h>
#include <stdlib.h>
#include <time.h>


void plantingBombs(char** cur_Grid, int size_Grid, int num_Bombs);
int* get_rand_loc_on_grid(int* grid_scale);
void execute_bombing(char** cur_Grid, int size_Grid);
void print_grid(char** cur_grid, int sizeGrid);

int main(){
  
  int sizeof_grid = 16;

  // define random number generator
  srand(time(NULL));

  // Allocate first level
  char** grid = malloc(sizeof_grid * sizeof(char*));
  
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
            exit(1);
        }
    }

    ///////////////////////////////////////////////////////////////////////

  // Fill the grid
  for(int i = 0; i < sizeof_grid; i++){

    for(int j = 0; j < sizeof_grid; j++){
      
      if( i == 4 && j == 4){

        grid[i][j] = '1';
      }
      else if( i == 5 && j == 5){

        grid[i][j] = '1';
      }
      else
        grid[i][j] = '.';
    }
  }  

    // Print Grid 
  print_grid(grid, sizeof_grid);
  
    // BOMBS planting 
  plantingBombs(grid, sizeof_grid, 5);

    // Print Grid
  print_grid(grid, sizeof_grid);
  
  // Exploding BOMBS
  execute_bombing(grid, sizeof_grid);

    // Print Grid
  print_grid(grid, sizeof_grid);

}

/*
char** bomberMan(int n, int grid_count, char** grid, int* result_count){


}
*/


void bomberMan(char** grid){

}

/* Function to print grid */
void print_grid(char** cur_grid, int sizeGrid){

  for(int i = 0; i < sizeGrid; i++){

    for(int j = 0; j < sizeGrid; j++){

        printf("%c ", cur_grid[i][j]);
    }

    printf("\n");
  }

  printf("\n\n\n"); 
}


void plantingBombs(char** cur_Grid, int size_Grid, int num_Bombs){

  int* plant_bomb_coord = malloc(2 * sizeof(int));

  for(int x = 0; x < num_Bombs; x++){

    // get random location on grid,
    plant_bomb_coord = get_rand_loc_on_grid(&size_Grid);

    // Plant the bomb at taken random location
    cur_Grid[ plant_bomb_coord[0]] [plant_bomb_coord[1] ] = '0';
  }
}

/*
void explode_recent_bombs(int* num_bombs){
    
}
*/

void execute_bombing(char** cur_Grid, int size_Grid){

  for(int i = 0; i < size_Grid; i++){

    for(int j = 0; j < size_Grid; j++){

      if( cur_Grid[i][j] == '0'){

        // If bomb found execute the bomb
        cur_Grid[i][j] = '.';

        // Also make friend bombs to explode in (x+1, y) (x-1, y), (x, y-1), (x, y+1)
        // consecutive actions so different if statements
        
        // (x+1, y)
        if(i+1 < size_Grid-1){

            cur_Grid[i+1][j] = '.';
        }
        // (x-1, y)
        if(i-1 >= 0){

            cur_Grid[i-1][j] = '.';
        }
        // (x, y-1)
        if(j-1 >= 0){

            cur_Grid[i][j-1] = '.';
        } 
        // (x, y+1)
        if(j+1 < size_Grid-1){

            cur_Grid[i][j+1] = '.';
        }
      
      }
    }

  }

}

int* get_rand_loc_on_grid(int* grid_scale){

  int* xy_coord = malloc(2 * sizeof(int));

  if( xy_coord == NULL){

    printf("xy_coord couldnt allocate memory! \n");
    exit(1);
  }


  // Get X & Y locations on grid randomly
  xy_coord[0] = rand() % (*grid_scale);
  xy_coord[1] = rand() % (*grid_scale); 

  printf("Coordinates are X:%d Y:%d \n\n", xy_coord[0], xy_coord[1]);

  return xy_coord;
}