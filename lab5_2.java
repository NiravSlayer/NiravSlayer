
 import java.util.Scanner;
class employee {
    int Emp_ID;
	String Emp_Name;
	String Emp_dejig;
	int Emp_age;
	float Emp_slary;
	public employee (int Emp_ID, String Emp_Name,String Emp_dejig,int Emp_age,float Emp_slary)
	{
		this.Emp_ID=Emp_ID;
		this.Emp_Name=Emp_Name;
		this.Emp_dejig=Emp_dejig;
		this.Emp_age=Emp_age;
        this.Emp_slary=Emp_slary;
	}
	public void display(){
		System.out.print("Emp_ID-"+Emp_ID+"\nEmp_Name-"+Emp_Name+"\nEmp_dejig-"+Emp_dejig+"\nEmp_age-"+Emp_age+"Emp_slary"+Emp_slary);
	}
}
public class lab5_2
{
	public static void main(String[] args) {

        Scanner SC=new Scanner(System.in);

		System.out.println("Enter Emp_ID");
        int Emp_ID=SC.nextInt();

		sc.nextLine();

        System.out.println("Enter Emp_Name");
        String Emp_Name=SC.nextLine();

        System.out.println("Enter Emp_dejig");
        String Emp_dejig=SC.nextLine();

        System.out.println("Enter Emp_age");
        int Emp_age=SC.nextInt();

        System.out.println("Enter Emp_slary");
        float Emp_slary=SC.nextFloat();

        employee obj = new employee(Emp_ID, Emp_Name, Emp_dejig, Emp_age, Emp_slary);
		obj.display();
	}
}