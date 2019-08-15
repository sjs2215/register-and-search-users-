package advisor;

import java.sql.*;
import java.util.ArrayList;

public class DatabaseBean {
	private static DatabaseBean instance = new DatabaseBean();//이 한개만 만들어짐. 그럼 private이 생성자 어떻게 호출되는지..?
	//같은 클래스안에 있기 때문에 상관없음. 외부에서 호출하거나 이런걸 못한다는 말. 
	
	private DatabaseBean() {}  //생성자가 private. 원래 객체 만들면 자동으로 생성자가 호출되어야 하므로 public이어야 함. 
	//private으로 해놨기 때문에 생성자, 객체 이런게 만들어질수도 없고 호출될수도 없음. => 싱글톤 클래스 
	
	public static DatabaseBean getInstance() {  
		//싱글톤이여서 하나 객체 만든거 있는데 그거를 외부에서 가져가야지 나중에 jsp파일에서 쓰니까 이 메소드가 필요함. 
		//static은 왜 사용했나?
		//getInstance가지고 있따면 언제든지 줄께~ 
		return instance;
	}
	
	//데이터베이스 연동
	private Connection getConnection() throws Exception { ////이 클래스 안에서 지지고 볶고 할꺼니 얘도 private
		String jdbcUrl ="jdbc:mysql://localhost:3306/adviserdb";
		String dbUser = "root";
		String dbPass = "1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPass);
		return conn;
	}

	//가입하기
	public void insertStudent(StudentBean student) {  //studentbean을 사용했기 때문에 10명 보낸 데이터를 묶어서 '객체'형태로 보내옴.
		Connection conn=null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		
		int advisor_id = 1;
		try {
			conn = getConnection(); //위에 있는 커넥션 메소드 호출. 
			String query = "select pid from professor where name=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,student.getAdvisor_name());//?
			rs = pstmt.executeQuery(); //교수들의 pid들을 결과테이블에 넣음
			if(rs.next()){
				advisor_id = rs.getInt(1); //결과테이블에 있던 숫자들을 커서 내려가면서 advisor_id에 넣음
			}
			query = "insert into student values(?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,student.getSnum());
			pstmt.setString(2,student.getName());
			pstmt.setString(3,student.getId());
			pstmt.setString(4,student.getPasswd());
			pstmt.setString(5,student.getPhone());
			pstmt.setInt(6,advisor_id);
			pstmt.executeUpdate(); //업데이트
			if(pstmt != null) pstmt.close();
			if(rs != null) rs.close();
			if(conn != null) conn.close();  //다 close해서 메모리 해제 
		} catch(Exception e) { //한꺼번에 위에서 try묶어서 catch로 예외처리 
			e.printStackTrace();
		}
	}
	
	//회원 검사
	public int userCheck(String id, String passwd) {
		Connection conn=null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		int x = -1;
		try {
			conn = getConnection();
			String query = "select passwd from student where id = ?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,id);

			rs = pstmt.executeQuery();
			while(rs.next()){
				String dbpasswd= rs.getString(1); 
				if(passwd.equals(dbpasswd))
					x = 1;
				else
					x = 0;
			}
			
			if(rs !=null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch(Exception e ) {
			e.printStackTrace();
		}
		return(x);  //최종적으로 x를 반환 
	}
	
	//학생찾아서 뿌리기
	//ArrayList는 가변적인 배열임. 배열의 크기가 고무줄처럼 늘어날수 있음 
	//학생 결과 테이블이 몇개있을지 모름.그래서 가변적인 ArrayList 제너릭 클래스를 사용한다.  
	public ArrayList<StudentBean> getStudents(String advisor_name) {
		Connection conn=null;	
		ArrayList<StudentBean> studentArray = new ArrayList<StudentBean>(10);
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			String query = "select student.snum, student.name, student.id,";
			query += " student.passwd, student.phone"; //+=는 쿼리 다 이어주는 역할
			query += " from student, professor";
			query += " where student.advisor_id=professor.pid";
			query += " and professor.name=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,advisor_name);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				StudentBean student = new StudentBean(); //디폴트 생성자로 만든 학생객체가 생성됨.
				//(디폴트 생성자로 만들었기 때문에 학생객체 안의 값은 다 0또는 null로 초기화 되어있을것임. 그래서 밑에서부터 그 값들을 채워야함
				student.setSnum(rs.getInt(1));
				student.setName(rs.getString(2));
				student.setId(rs.getString(3));
				student.setPasswd(rs.getString(4));
				student.setPhone(rs.getString(5));
				student.setAdvisor_name(advisor_name);
				studentArray.add(student); //학생객체 담을수 있는 studentArray에 .add로 추가 
			}
			if(rs !=null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch(Exception e ) {
			e.printStackTrace();
		}
		return studentArray;
	}
}