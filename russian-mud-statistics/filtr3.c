#include <stdio.h>
#include <string.h>

#define BUFLEN 20000

int main (int argv)
{char buffer [BUFLEN];
int i; char c; char *cc;
int letter_ya;
FILE *fp;

//printf("argv=%i\n", argv);

if (argv>=2)
{
printf("This is filtr for munin plugin \"plugin_balderdash_mud.sh\" by prool\n\
Prool: http://prool.kharkov.org http://mud.kharkov.org proolix <dog> gmail <dot> com\n\
Exit: control D TWICE!!!\n\
");
return 2;
}

letter_ya=0;

for(i=0;i<BUFLEN;i++) buffer[i]=0;

i=0;
while (1)
	{
	c=getchar();
	if (c==-1)
		{
		if (letter_ya==1) break;
		else letter_ya=1;
		}
	else	letter_ya=0;
	//printf("input %i\n", c);
	buffer[i++]=c;
	if (i>=(BUFLEN-1)) break;
	}

//printf("buffer=''%s''\n", buffer);

cc=strstr(buffer,"смертных");

//if (cc) printf("cc!=0\n"); else printf("cc==0\n");

//printf("'%s'\n", cc+8);

if (cc) i=atoi(cc+9); else i=0;

printf("vmudtest.value %i\n", i);

#if 1 // debug output
fp=fopen("/tmp/file3.txt","a");
if (fp!=NULL)
    {
    fprintf(fp,"vmudtest.value %i\n",i);
    fclose(fp);
    }
#endif

}
