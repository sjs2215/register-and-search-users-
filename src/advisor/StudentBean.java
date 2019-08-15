package advisor;

public class StudentBean {
	private int snum;
	private String name;
	private String id;
	private String passwd;
	private String phone;
	private String advisor_name;
	
	//디폴트 생성자를 만들어주어야함
	public StudentBean() {
		snum=0;
		name=null;
		id=null;
		passwd=null;
		phone=null;
		advisor_name=null;
	}
	
	//생성자 public & 클래스 이름과 동일해야함
	public StudentBean(int sn, String n, String p, String ph, String an) {
		snum=sn; //파라메터 이름이 snum일떄는 this.snum=snum; 으로 바꾸어주어야함. 
		name=n;
		passwd=p;
		phone=ph;
		advisor_name=an;
	}
	
	public String printStudent() {
		StringBuffer sb = new StringBuffer(); //자바가 제공하는 stringbuffer클래스(넉넉한 공간의 객체) 사용.
		sb.append("학번:" + snum);
		sb.append(" 이름:" + name);
		sb.append(" 지도교수:" + advisor_name);
		return sb.toString(); 
	}



	public int getSnum() {
		return snum;
	}



	public void setSnum(int snum) { //이 클래스의 snum을 파라메터 snum으로 set할께~
		//만약 파라메터 이름이 n이라면 그냥 snum=n; 이렇게 써도됨. 변수명 같아서 컴파일러가 헷갈릴까봐 this 써주는것임. 
		this.snum = snum;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getPasswd() {
		return passwd;
	}



	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public String getAdvisor_name() {
		return advisor_name;
	}



	public void setAdvisor_name(String advisor_name) {
		this.advisor_name = advisor_name;
	}
}
