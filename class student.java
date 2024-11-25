class student{
    int Enroll;
    static string collage = 'DU';

    public student(int Enroll){
        this.Enroll = Enroll;
    }

    public void display(){
        System.out.println(this.Enroll);
        System.out.println(collage); 
    }
public class Demo{
    public static void main(String[] args)
    {
        student s1=new student(101);
        s1.display();

        System.out.printkln(student,collage);
    }
}