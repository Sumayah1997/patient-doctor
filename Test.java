import java.io.*; 
import java.util.*;

import java.util.ArrayList;

///--------------------//
class Person {
	private String firstName;
	private String lastName;

	
	public Person (){ 
		firstName="";
		lastName="";
		
	}
	
	public Person (String firstName,  String lastName){
	this.firstName=firstName;
	this.lastName=lastName;
	
	}
	
	public void setfirstName (String firstName){ this.firstName = firstName; }
	public String getfirstName() { return firstName; }
    public void setlastName( String lastName){ 	this.lastName= lastName;}
    public String getlastName() { return lastName;}
   
    public String getFullName()
    { return firstName +" " +lastName ;
    }

 }
///////////////////////////////////////////////////////////////////////////		
class Employee extends Person {
	
private static int nextid =1;
private int id = nextid++;
private int deptartment;
private double salary;
private Dependent [] dependents = new Dependent[5];
private int numOfDep;

public Employee () {    }
public Employee(String firstName, String lastName) { super (firstName,lastName);}
public Employee(String firstName, String lastName, int department) 
{ 
super (firstName,lastName);
setDept(department);
}

public Employee(String firstName, String lastName, double insalary)
{
super (firstName,lastName);
setSalary(insalary);	
}

public Employee(String firstName, String lastName, int department, double insalary)
{
this (firstName,lastName,department);
setSalary(insalary);	
}

public int getId() { return id;}
public int getDept(){ return deptartment; }
public void setDept(int department){ this.deptartment=deptartment;}
public void setSalary(double insalary){ salary = insalary;}

public double getSalary(){ return salary; }


public void addDepentdant(String fname, String lname)
{
	if (numOfDep < dependents.length)
		dependents[numOfDep++]=new Dependent(this,fname,lname);
	
}

public String listDependant(int numdept)
{
	
	if (numdept == 0) return  "";
	
    StringBuffer temp = new StringBuffer();
	String newline = System.getProperty("line,separator");
	
	if (newline== null) newline = "\n";
		
	 	for(int i =0; i< numdept; i++)
   {
	temp.append(dependents[i].getfirstName());
	temp.append(" ");
	temp.append(dependents[i].getlastName());
	temp.append(newline);
	}
	return temp.toString();
}


public String getPayInfo()
{
	return "Employee " +id+" " + " department "+deptartment+ " " + " paid " + salary; 
		
}
}

//////////////////////////////////////////////////////////////
class Dependent extends Person{
	
	private Employee dependentOf;
	
	public Dependent(Employee dependentOf, String firstName, String lastName)
	{
		super(firstName,lastName);
		this.dependentOf=dependentOf;
		
	}
	
	public Employee getDependantOf() { return dependentOf; }
	
}
	
////////////////////////////////////////////////////////////////
class Test {
public static void main(String[] args) {
	
  Scanner sc =new Scanner(System.in);
  
  String fname=null;
  String lname=null;
  int dept =0;
  double empsalary=0.0;
  int Numdept=0;
  String dfname=null;
  String dlname=null;
  Employee e =null;
  int chioce;
  System.out.print("Enter First Name ");
  fname=sc.next();
  System.out.print ("Enter Last Name ");
  lname=sc.next();
  System.out.print("Enter Number of Dept. ");
  dept=sc.nextInt();
  
  do{
  	System.out.print("Enter Salary ");
  	empsalary=sc.nextInt();
  	if(empsalary <0.0)
  		System.out.print("Pay rate must be >=0 ");
  }	while(empsalary<0.0);
  
  			e=new Employee(fname,lname,dept,empsalary);
  			System.out.print("How Many Dependents ");
  			Numdept=sc.nextInt();
  			if (Numdept>0)for(int y=0;y<Numdept;y++)
  			{
  				System.out.print("Enter Dependent " + (y+1) + " First Name ");
  				dfname=sc.next();
  				System.out.print("Enter Dependent " + (y+1) +" Last Name ");
  				dlname=sc.next();
  				
  				e.addDepentdant(dfname,dlname);
  			}
  	
  		System.out.println (e.getPayInfo());
  	 	System.out.println (e.listDependant(Numdept));
  		 
   	
  
}
}
 