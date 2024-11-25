import java.util.Scanner;
class student {
    int enroll;
	String Name;
	String Gender;
	float Marks;
	public student (int enroll, String Name,String Gender,float Marks)
	{
		this.enroll=enroll;
		this.Name=Name;
		this.Gender=Gender;
		this.Marks=Marks;
	}
	public void display(){
		System.out.print("enroll-"+enroll+"\nName-"+Name+"\nGender-"+Gender+"\nMarks-"+Marks);
	}
}
public class lab5_1
{
	public static void main(String[] args) {
		student obj=new student(101,"abc","Male",18.33f);
		obj.display();
	}
}