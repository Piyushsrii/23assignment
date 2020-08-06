elcome in assignment23

Problem statement----->(Check Employee is Present or Absent- Use ((RANDOM)) for Attendance Check)
public class Employee1
{
          public void checkEmployee()
          {
                  double empcheck=Math.floor(Math.random()*10)%2;
                  if(empcheck==1)
                  {
                  System.out.println("Employee is present");
                  }
                  else
                  {
                  System.out.println("Employee is not present");
                  }
          }
    public static void main(String[] args)
    {
        Employee1 emp=new Employee();
        emp.checkEmployee();
    }
}

###UserCase-2###
Problem Statement---->Calculate Daily Employee Wage
public class Employee2
{
        public static final int IS_FULL_TIME=1;
        public static final int EMP_RATE_PER_HOUR=20;

        int empWage=0;
        int empHRS=0;
        public void employee()
        {
        int empcheck=(int)Math.floor(Math.random()*10)%2;
        if(empcheck==IS_FULL_TIME)
        {
        empHRS=8;
        empWage= EMP_RATE_PER_HOUR*empHRS;
        System.out.println("employee wage="+empWage);
        }
        }
       public static void main(String args[])
       {
        Employee2 emp =new Employee2();
        emp.employee();
       }
}

###UserCase-3###
Problem Statement------>Add Part time Employee & Wage-Assume Part time Hour is 8
public class Employee
{
        public static final int IS_PART_TIME=1;
        public static final int IS_FULL_TIME=2;
        public static final int EMP_RATE_PER_HOUR=20;

        int empWage=0;
        int empHRS=0;
        public void employeeWork()
        {
        int empcheck=(int)Math.floor(Math.random()*10)%2;
        if(empcheck==IS_FULL_TIME)
        {
        empHRS=8;
        empWage= EMP_RATE_PER_HOUR*empHRS;
        System.out.println("employee wage="+empWage);
        }
        elseif(empcheck==IS_PART_TIME)
        {
          empHRS=4;
          empWage= EMP_RATE_PER_HOUR*empHRS;
          System.out.println("employee wage="+empWage);
        }
        else
        System.out.println("No value");
        }
        public static void main(String args[])
        {
        Employee emp=new Employee();
        emp.employeeWork();
        }

}

###UserCase-4###
Problem Statement------>Solving using Switch Case Statement

###UserCase-5###
Problem Statement------>(Calculating Wages for a Month - Assume 20 Working Day per Month)
public class EmployeeSwitch4
{
        public static final int IS_PART_TIME=1;
        public static final int IS_FULL_TIME=2;
        public static final int EMP_RATE_PER_HOUR=20;
        public static final int NUM_OF_WORKING_DAYS=20;
        int empHRS=0;
        int empWage=0;
        int totalEmpWage=0;
        int totalEmpHrs=0;
        public void employeeWage()
        {
        int totalworkingdays=0;
        while(totalworkingdays<NUM_OF_WORKING_DAYS)
        {
         totalworkingdays++;
         int empcheck=(int)Math.floor(Math.random()*10)%3;
         switch(empcheck)
        {
           case IS_FULL_TIME:
           empHRS=8;
           break;
           case IS_PART_TIME:
           empHRS=4;
           break;
           default:
           empHRS=0;
        }
         totalEmpHrs+=empHRS;
         System.out.println("totalworkingdays"+totalworkingdays+" "+"totalEmpHrs"+totalEmpHrs);
        }
         totalEmpWage=totalEmpHrs*EMP_RATE_PER_HOUR;
         System.out.println("total employee wage"+totalEmpWage);
        }

         public static void main(String args[])
         {
         EmployeeSwitch4 emp=new EmployeeSwitch4();
         emp.employeeWage();
         }
}

###UserCase-6###
Problem Statement---->(Calculate Wages till a condition of total working hours or days is reached for a month - Assume 100 hours and 2 days)
public class EmployeeSwitch5
{
        public static final int IS_PART_TIME=1;
        public static final int IS_FULL_TIME=2;
        public static final int EMP_RATE_PER_HOUR=20;
        public static final int Num_Of_Woking_Days=2;
        public static final int Max_Hrs_In_Months=15;
        public static void main(String args[])
        {
        int empHRS=0;
        int empWage=0;
        int totalEmpWage=0;
        int totalEmpHrs=0;
        int totalworkingdays=0;
        public void employeeWage()
        {
        while(totalEmpHrs<=Max_Hrs_In_Months && totalworkingdays<Num_Of_Woking_Days)
        {
         totalworkingdays++;
         int empcheck=(int)Math.floor(Math.random()*10)%3;
         switch(empcheck)
        {
           case IS_FULL_TIME:
           empHRS=8;
           break;
           case IS_PART_TIME:
           empHRS=4;
           break;
           default:
           empHRS=0;
        }
         totalEmpHrs+=empHRS;
         System.out.println("totalworkingdays"+totalworkingdays+" "+"totalEmpHrs"+totalEmpHrs);
        }
         totalEmpWage=totalEmpHrs*EMP_RATE_PER_HOUR;
         System.out.println("total employee wage"+totalEmpWage);
        }
         public static void main(String args[])
         {
         EmployeeSwitch5 emp=new EmployeeSwitch5();
         emp.employeeWage();
         }
}

###UserCase-7###
Problem Statement------>Refactor the Code to write a Class Method to Compute Employee Wage - Use Class Method and Class Variables
public class Employee
{
        public static final int IS_PART_TIME=1;
        public static final int IS_FULL_TIME=2;
        public static final int EMP_RATE_PER_HOUR=20;

        int empWage=0;
        int empHRS=0;
        public void employeeWork()
        {
        int empcheck=(int)Math.floor(Math.random()*10)%2;
        if(empcheck==IS_FULL_TIME)
        {
        empHRS=8;
        empWage= EMP_RATE_PER_HOUR*empHRS;
        System.out.println("employee wage="+empWage);
        }
        elseif(empcheck==IS_PART_TIME)
        {
          empHRS=4;
          empWage= EMP_RATE_PER_HOUR*empHRS;
          System.out.println("employee wage="+empWage);
        }
        else
        System.out.println("No value");
        }
        public static void main(String args[])
        {
        Employee emp=new Employee();
        emp.employeeWork();
     }

}

###UserCase-8###
Problem Statement----->Compute Employee Wage for multiple companies - Note: Each Company has its own wage, number of working days and working hours >
parameters instead of Class Variables.

public class Empwage4
{
        public static final int IS_PART_TIME=1;
        public static final int IS_FULL_TIME=2;
        public static final int EMP_RATE_PER_HOUR=20;
        public static final int NUM_OF_WORKING_DAYS=2;
        public static final int MAX_HRS_IN_MONTHS=10;

        public static void calCulateEmpWage(String company, int empRate, int numOfDays, int maxHrs)
        {
        int empHRS=0;
        int empWage=0;
        int totalEmpWage=0;
        int totalEmpHrs=0;
        int totalworkingdays=0;
        while(totalEmpHrs<=maxHrs && totalworkingdays<numOfDays)
        {
         totalworkingdays++;
         int empcheck=(int)Math.floor(Math.random()*10)%3;
         switch(empcheck)
        {
           case IS_FULL_TIME:
           empHRS=8;
           break;
           case IS_PART_TIME:
           empHRS=4;
           break;
           default:
           empHRS=0;
        }
         totalEmpHrs+=empHRS;
         System.out.println("totalworkingdays"+totalworkingdays+" "+"EmpHrs"+empHRS);
        }
         totalEmpWage=totalEmpHrs*empRate;
         System.out.println("total employee wage"+"Company is"+company+" "+totalEmpWage);
}
        public static void main(String args[])
        {
          calCulateEmpWage("Dmart",10,5,4);
          calCulateEmpWage("Reliance",15,6,7);

        }
}

##UserCase9##
Problem-Statement--->Ability to save the Total Wage for Each Company - Note: You can Create EmpWageBuilder for each Company- Use Instance Variable instead of function parameters
public class EmpWageOOPs
{
        public static final int IS_PART_TIME=1;
        public static final int IS_FULL_TIME=2;

        public final int EMP_RATE_PER_HOUR;
        public final int NUM_OF_WORKING_DAYS;
        public final int MAX_HRS_IN_MONTHS;
        public final String company;

        public EmpWageOOPs(String company, int empRate, int numOfDays, int maxDays)
        {
                     this.company=company;
                     EMP_RATE_PER_HOUR=empRate;
                     NUM_OF_WORKING_DAYS=numOfDays;
                     MAX_HRS_IN_MONTHS=maxDays;
        }
        public static void main(String args[])
        {
        EmpWageOOPs companywage=new EmpWageOOPs("DMART",2,4,6);
        int totalEmpHrs=0,totalEmpWage=0,totalWorkingDays=0;
        while(totalEmpHrs<=companywage.MAX_HRS_IN_MONTHS && totalWorkingDays<companywage.NUM_OF_WORKING_DAYS)
        {
         totalWorkingDays++;
         int empHrs=0,empWage=0;
         int empcheck=(int)Math.floor(Math.random()*10)%3;
         switch(empcheck)
        {
           case IS_FULL_TIME:
           empHrs=8;
           break;
           case IS_PART_TIME:
           empHrs=4;
           break;
           default:
           empHrs=0;
        }
         totalEmpHrs+=empHrs;
         empWage=empHrs*companywage.EMP_RATE_PER_HOUR;
         totalEmpWage += empWage;
         System.out.println("Employee wage :"+empWage);
        }
         System.out.println("total Employee wage : " + totalEmpWage);
        }
}



###UserCase-10###
public class EmpWageOOPs1
{
        public static final int IS_PART_TIME=1;
        public static final int IS_FULL_TIME=2;

        public final int EMP_RATE_PER_HOUR;
        public final int NUM_OF_WORKING_DAYS;
        public final int MAX_HRS_IN_MONTHS;
        public final String company;

        public EmpWageOOPs1(String company, int empRate, int numOfDays, int maxDays)
        {
                     this.company=company;
                     EMP_RATE_PER_HOUR=empRate;
                     NUM_OF_WORKING_DAYS=numOfDays;
                     MAX_HRS_IN_MONTHS=maxDays;
        }
        public void calculateWageForCompany()
        {
        int totalEmpHrs=0;
        int totalEmpWage=0;
        int totalWorkingDays=0;
        while(totalEmpHrs < MAX_HRS_IN_MONTHS && totalWorkingDays < NUM_OF_WORKING_DAYS)
        {
         totalWorkingDays++;
         int empHrs=0,empWage=0;
         int empcheck=(int) Math.floor(Math.random()*10)%3;
         switch(empcheck)
        {
           case IS_FULL_TIME:
           empHrs=8;
           break;
           case IS_PART_TIME:
           empHrs=4;
           break;
           default:
           empHrs=0;
        }
         totalEmpHrs+= empHrs;
         empWage=empHrs*EMP_RATE_PER_HOUR;
         totalEmpWage += empWage;
         System.out.println("Employee wage :"+company+" "+empWage);
        }
         System.out.println("total Employee wage : " + totalEmpWage);
        }

        public static void main(String args[])
        {
        EmpWageOOPs1 dmart=new EmpWageOOPs1("DMART",2,4,6);
        dmart.calculateWageForCompany();
        EmpWageOOPs1 reliance=new EmpWageOOPs1("Reliance",4,8,6);
        reliance.calculateWageForCompany();
        }
}

###Usercase-11###

        public class EmpWageFinal
        {
        public static final int IS_PART_TIME=1;
        public static final int IS_FULL_TIME=2;

        private int numOfCompany=0;
        private CompanyEmpWage[] companyEmpWageArray;
        public EmpWageFinal()
        {
               companyEmpWageArray= new CompanyEmpWage[5];
        }
        private void addCompanyEmpWage(String company,int empRatePerHour,int numOfWorkingDays,int maxHoursPerMonth)
        {
               companyEmpWageArray[numOfCompany]=new CompanyEmpWage(company,empRatePerHour,numOfWorkingDays,maxHoursPerMonth);
               numOfCompany++;
        }
        private void computeEmpWage()
        {
          for(int i=0;i<numOfCompany;i++)
            {
                   companyEmpWageArray[i].setTotalEmpWage(this.computeEmpWage(companyEmpWageArray[i]));
                   System.out.println(companyEmpWageArray[i]);
            }
        }
        private int computeEmpWage(CompanyEmpWage companyEmpWage)
        {
            int totalEmpWage=0;
            int totalEmpHrs=0;
            int totalWorkingDays=0;
            while(totalEmpHrs < companyEmpWage.MAX_HRS_IN_MONTHS && totalWorkingDays <companyEmpWage.NUM_OF_WORKING_DAYS)
        {
            totalWorkingDays++;
            int empHrs=0;
            int empWage=0;
            int empcheck=(int) Math.floor(Math.random()*10)%3;

           switch(empcheck)
        {
           case IS_FULL_TIME:
           empHrs=8;
           break;
           case IS_PART_TIME:
           empHrs=4;
           break;
           default:
           empHrs=0;
        }
         totalEmpHrs+= empHrs;
         totalEmpWage += totalEmpHrs*companyEmpWage.NUM_OF_WORKING_DAYS;
         System.out.println("Employee wage : "+totalWorkingDays);
         System.out.println("total Employee Hrs : " + totalEmpHrs);
        }
            return totalEmpHrs*companyEmpWage.EMP_RATE_PER_HOUR;
        }
        public static void main(String args[])
        {
         EmpWageFinal dmart=new EmpWageFinal();
         dmart.addCompanyEmpWage("Dmart",2,3,4);
         dmart.addCompanyEmpWage("Reliance",8,5,3)  ;
         dmart.computeEmpWage();
        }

}

       class CompanyEmpWage
       {

        public static final int IS_PART_TIME=1;
        public static final int IS_FULL_TIME=2;

        public final int EMP_RATE_PER_HOUR;
        public final int NUM_OF_WORKING_DAYS;
        public final int MAX_HRS_IN_MONTHS;
        public final String company;
        public int totalEmpWage;

        public CompanyEmpWage(String company, int empRate, int numOfDays, int maxDays)
        {
                     this.company=company;
                     EMP_RATE_PER_HOUR=empRate;
                     NUM_OF_WORKING_DAYS=numOfDays;
                     MAX_HRS_IN_MONTHS=maxDays;
        }

        public void setTotalEmpWage(int totalEmpWage)
        {
            this.totalEmpWage=totalEmpWage;
        }
        public String toString()
        {
          return "Total Emp Wage Company"+company+" is"+totalEmpWage;
        }
}


