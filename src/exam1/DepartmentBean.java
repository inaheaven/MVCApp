package exam1;

public class DepartmentBean {
	public String[] getAdvice(String dept){
		String[] result = new String[2];
		if(dept.equals("kor")){
			result[0] = "��� ���ؾ��Ѵ�.";
			result[1] = "��� ����ؾ��Ѵ�.";
		}else if(dept.equals("eng")){
			result[0] = "��� ���ؾ��Ѵ�.";
			result[1] = "��� ����ؾ��Ѵ�.";
		
		}else if(dept.equals("com")){
			result[0] = "��ǻ�͸� ���ؾ��Ѵ�.";
			result[1] = "��ǻ�͸� ����ؾ��Ѵ�.";
		}
		return result; 
	}
}
