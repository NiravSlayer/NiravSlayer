import java.util.Scanner;
public class lab4_2
{
	public static void main(String args[])
	{
		Scanner S=new Scanner(System.in);
        System.out.println("HOw many number you want to enter:");
        int e=0,o=0;
        int n=S.nextInt();
        int a[]=new int[n];

        System.out.println("Enter number:");

        for(int i=0;i<n;i++)
        {
            a[i]=S.nextInt();
        }
        for(int i=0; i<n ; i++)
        {
            if (a[i] != 0) 
            {
                if (a[i] % 2==0) 
                {
                    e++;
                }
                else
                {
                    o++;
                }
            }
        }
        System.out.println("Your even numer is:"+e);
        System.out.println("Your odd number is:"+o);
	}
}