//Add some the other sorting algos and make a user interface so you can select them

float[] values;
int step = 1; //Global variables are not good
int j = 0;

void setup(){
  size(800,500);
  //For each of the width values make it a random height (window height)
  values = new float[width/20];
  for (int i=0; i<values.length; i++){
    values[i] = random(height);
  }
  frameRate(5);
}

void draw(){
  background(0);
  display(values);
  //bubbleSort(values);
  //if (step < 40){
  //  selectionSort(values);
  //}
    insertionSort(values);
}

void display(float[] arr){
  float recW = 20;
  float start = 0;
  for (int i=0; i < arr.length; i++){
    if (i<step){
      fill(0,255,0);}
      else{
      fill(255,0,0);
      }
    rect(start,height-arr[i],recW,arr[i]);
    start += recW;
  }
}

void swap(float[] arr, int a, int b){
  //Simple swap functions
  float temp = arr[a];
  arr[a] = arr[b];
  arr[b] = temp;
}

void bubbleSort(float[] arr){
//Compare element A in the array with element B right next to it
//Swaps them so the smaller comes first
  float a = arr[j];
  float b = arr[j+1];
  if (a > b){
  swap(arr,j,j+1);
  }
  if (step < arr.length){
    j = j+1;
    if (j >= arr.length-step-1){
      j = 0;
      step += 1;
    }
  }
}

void selectionSort(float[] arr){
//Picks a min, compares the items, if there is a smaller one swaps that onw with the min
// Moves to the next step and continues the cycle
  int min = step;
  for (int j = step+1; j < arr.length; j++){
    if (arr[min] > arr[j]){
      min = j;
    }
  }
  swap(arr,step,min);
  step++;
}

void insertionSort(float[] arr) {
//Picks a key to compare to, swaps if the key with items bigger than it that come before it 
//Compares the key to every sorted itme before it
  if (step < arr.length)
  {
    float mother_key = arr[step]; 
    j = step-1;
    while(j >= 0 && arr[j] > mother_key){
      arr[j+1] = arr[j];
      j = j - 1;
    }
    arr[j+1] = mother_key;
    step+=1;
  }
}

void mergeSort(){

}

void quickSort(float[] arr,int start,int end){

}










  //for (int i = 0; i < arr.length;i++){
  //  int min_index = i;
  //  for (int j = i+1; j < arr.length; j++){
  //    if (arr[min_index] > arr[j]){
  //      min_index = j;
  //    }
  //  }
  //  swap(arr,i,min_index);
 // }
 // display(arr);
