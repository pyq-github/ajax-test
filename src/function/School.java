package function;

import JavaBean.Student;
import JavaBean.Teacher;

public class School {

	public static void main(String[] args) {
		Student student = new Student();
		Teacher teacher = new Teacher();
		student.setName("pyq");
		teacher.setTeacherName("t-pyq");
		System.out.println(student.getName()+teacher.getTeacherName());
	}
}
