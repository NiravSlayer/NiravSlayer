import java.util.Scanner;
public class matrixofarray {
    public static void main(String[] args){
        Scanner SC = new Scanner(System.in);
        System.out.println("Enter the size of array\n");
        int n=SC.nextInt();
        int[][] a1=new int[3][3];

        for(int i=0;i<a1.length;i++)
        {
            System.out.println("Enter the size of array\n");
             for(int j=0;j<a1.length;j++)
            {
                System.out.println("Enter the size of array\n");
                a1[i][j]=SC.nextInt();
            }
        }
        for(int i=0;i<a1.length;i++)
        {
             for(int j=0;j<a1.length;j++)
            {
                System.out.println(a1[i][j]+);
            }
        }
    }
}