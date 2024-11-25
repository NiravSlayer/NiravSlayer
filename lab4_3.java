import java.util.Scanner;
public class lab4_3
{
	public static void main(String args[])
	{
		Scanner SC=new Scanner(system.in);
        System.out.println("Enter size of array:");

        int n=SC.nextInt();
        int z=SC.nextInt();
        char[]array=new char [i][j];

        for(int i=0;i<n;i++)
        {
            for(int j=0;j<z;j++)
            {
                System.out.println("enter elements");
                array[i][j]=SC.nextInt();
            }
        }
        for(int i=0;i<n;i++)
        {
            for(int j=0;i<z;j++)
            {
                System.out.println(array[i][j]);
            }
            System.out.println("");
        }
	}
}