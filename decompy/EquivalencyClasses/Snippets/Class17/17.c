
int sendback(int bin, int num) {
	
   switch(bin) {
      case 1 :
         num = 5;
         break;
      case 0 :
         num = 10;
         break;
      default :
         num = 0;
   }
    
    return num;
}

int main()
{
    int bin = 1;
    int num = 0;
    
    int val = sendback(bin, num);
    
    //printf("The integer is %d\n", val);
    
    return 0;
}
