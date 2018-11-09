//Example created by Vatricia Edgar. Pulled from another class.

#include <sys/types.h>
#include <sys/stat.h>
#include <stdio.h>
#include <strings.h>
#include <string.h>
#include <dirent.h>
#include <unistd.h>
#include <stdlib.h>
int sortDirEntries(DIR* directory, struct dirent** entryList);
int size(DIR* directory, char* path);
void printDirectory(char* name, int size);

int main(){
	int s = size(opendir("."), ".");
	printDirectory(".", s);
	return 0;
}

int size(DIR* directory, char* path){
	char tmp[1024];
	int s = 0;
	struct dirent* entry;
	struct stat stats;
	struct dirent*  entries[256];
	int length = sortDirEntries(directory, entries);
	int sizeToPrint = 0;
	int i = 0;
	while(i < length){
		if(entries[i]->d_type == 4){
			strcpy(tmp, path);
			strcat(tmp, "/");
			strcat(tmp, entries[i]->d_name);
			stat(tmp, &stats);
			s += stats.st_size;
			s += size(opendir(tmp), tmp);
			printDirectory(tmp, s);
		}
		else{
			strcpy(tmp, path);
			strcat(tmp, "/");
			strcat(tmp, entries[i]->d_name);
			stat(tmp, &stats);
			s += stats.st_size;
			printDirectory(tmp, stats.st_size);
		}
		i++;
	}
	return s;
}

int sortDirEntries(DIR* directory, struct dirent** entryList){
	struct dirent* entry;
	int length = 0;
	int locFound = 0;
	int location = 0;
	while((entry = readdir(directory)) != NULL && length < 256){
		if(strcmp(entry->d_name, ".") != 0 && strcmp(entry->d_name, "..") != 0){
			locFound = 0;
			int i = 0;
			while(i < length && (locFound == 0)) {
				if (strcasecmp(entry->d_name, entryList[i]->d_name) < 0) {
					locFound++;
				}
				location = i;
				i++;
			}
			if(locFound == 0){
				location = length;
			}
			int j = length;
			for (j; j > location; j--) {
				entryList[j] = entryList[j - 1];
			}
			entryList[location] = entry;
			length++;
		}
	}
	return length;
}

void printDirectory(char* name, int size){
    int sizeToPrint = 0;
	if(size > 1048576){
		sizeToPrint = size/1048576;
		printf("%dM\t%s\n", sizeToPrint, name);
	}
	else if(size > 1024){
	sizeToPrint = size/1024;
		printf("%dK\t%s\n", sizeToPrint, name);
	}
	else{
		sizeToPrint = size;
		printf("%dB\t%s\n", sizeToPrint, name);
	}
}