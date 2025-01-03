#include <stdio.h>
int A[11];
int s;
int main(){	
	int i;
	s=0;
	for(i=0;i<11;i++){
		A[i]=2*i;
		s+=A[i];
		if(s>10)
			A[i]=s;
	}
	for(i=0;i<11;i++)
		printf("%d ",A[i]);
	printf("\n");
	return 0;
}