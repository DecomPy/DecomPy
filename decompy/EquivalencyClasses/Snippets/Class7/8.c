
int sendback(int test, int incrementer) {
    // While loop test 
	while (test < 10) {
		test++;
		incrementer++;
	}
	
	return incrementer;
}

// Comparison of iterators: While loop vs. For loop
int main() {

    int test = 0;
    int incrementer = 0;
	
	int final_val = sendback(test, incrementer);
	//printf("The integer is %d\n", final_val);
	
	return 0;
}
