import java.util.Scanner;
public class odd_even {
    public static void main(String[] args){
        Scanner SC = new Scanner(System.in);
        System.out.println("Enter the size of array\n");
        int n=SC.nextInt();
        int[] a1=new int[n];
        int e=0,o=0;

        for(int i=0;i<a1.length;i++)
        {
            System.out.println("Enter the size of array\n");
            a1[i]=SC.nextInt();
        }
        for(int i=0;i<a1.length;i++)
        {
           if(a1[i]%2==0)
           {
                e++;
           }
           else{
                o++;
           }
        }
        System.out.println("Number of Even\n"+e);
        System.out.println("Number of Odd\n"+o);
    }
}