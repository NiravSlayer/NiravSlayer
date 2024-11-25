import java.util.Scanner;
public class lab4_1
{
	public static void main(String args[])
	{
		Scanner S = new Scanner(System.in);
        int n;
        System.out.println("Enter Number:");
        n=S.nextInt();
        int a[]=new int[n];
        for(int i=0; i<n;i++)
        {
            a[i]=S.nextInt();
        }
        System.out.println("Numbers arr enter suceessfully");
        for(int i=0; i<n;i++)
        {
            System.out.println(a[i]);
        }
	}
}