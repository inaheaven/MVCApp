package exam1;

public class DepartmentBean {
	public String[] getAdvice(String dept){
		String[] result = new String[2];
		if(dept.equals("kor")){
			result[0] = "국어를 잘해야한다.";
			result[1] = "국어를 사랑해야한다.";
		}else if(dept.equals("eng")){
			result[0] = "영어를 잘해야한다.";
			result[1] = "영어를 사랑해야한다.";
		
		}else if(dept.equals("com")){
			result[0] = "컴퓨터를 잘해야한다.";
			result[1] = "컴퓨터를 사랑해야한다.";
		}
		return result; 
	}
}
