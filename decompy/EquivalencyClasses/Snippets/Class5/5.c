
int sendback(int bin, int num) {
	
	if(bin != 1) {
        num = 10;
    }
    
    else {
        num = 5;
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
