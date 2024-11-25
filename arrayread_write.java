import java.util.Scanner;
public class arrayread_write {
    public static void main(String[] args)
    {
        Scanner SC = new Scanner(System.in);
        System.out.println("Enter the size of array\n");
        int n=SC.nextInt();
        int[] a1=new int[n];

        for(int i=0;i<a1.length;i++)
        {
            a1[i]=SC.nextInt();
        }
        for(int j=0;j<a1.length;j++)
        {
            System.out.print(a1[j]);
        }
    }
}
