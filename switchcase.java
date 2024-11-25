import java.util.Scanner;
public class switchcase
{
	public static void main(String args[])
	{
        Scanner SC=new Scanner(System.in);
        System.out.print("Enter Two Number");
        int a=SC.nextInt();
        int b=SC.nextInt();
        System.out.print("Enter an operetio");
        char ope=SC.next().charAt(0);
        switch(ope)
        {
            case '+':
            {
                System.out.print(a+b);
                break;
            }
             case '-':
            {
                
                System.out.print(a-b);
                break;
            }
            case '*':
            {
                
                System.out.print(a*b);
                break;
            }
            case '/':
            {
                
                System.out.print(a/b);
                break;
            }
        }
	}
}