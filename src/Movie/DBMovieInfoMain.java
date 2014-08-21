package Movie;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;

public class DBMovieInfoMain {

	public static void main(String[] args) {
		/** 
			DB사용주의사항(다른 사람것은 손대지 않는다).
			1. DB용 Class 를 만든다.( ex. /SwingFlow/src/Common/movieInfo.java  )
			2. /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml  파일을 만든다   movieInfoSqls.xml 참고할것
			3. /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든 ????Sqls.xml 을 추가요청 (==>이영민)
			4. 실제 메서드를 만든다  ( ex. /SwingFlow/src/Shopping/DBTestMain.java )
			
			<문법>
			
			사용 시작시: MyBatis<movieInfo> movieInfoDB = new MyBatis<movieInfo>(); 
			  1. 객체를 문저 생성하여 사용할것
			  2. <movieInfo> 은 자기가 작성한 디비 클라스이다.
			  
			사용종료후: movieInfoDB.close()
			  1. 사용한 자원을 반납.
			  
			사용 방법:
			  boolean movieInfoDB.find(nameSpace, MyClassObject)  
			
		**/
		MyBatis<MovieInfo> movieInfoDB = new MyBatis<MovieInfo>();
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<MovieInfo> luser = null;

		// DB객체생성,값설정
		MovieInfo movieInfo = new MovieInfo();

		// Test용DB insert
		
		
		//drop table
	
		//1
		MovieInfo movieInfo1 = new MovieInfo(1,"군도", "poster.jpg", "액션","감독","120분","출연배우",1, new java.sql.Date(System.currentTimeMillis()) ,9.9);
		MovieInfo movieInfo2 = new MovieInfo(2,"명량", "poster.jpg", "액션","감독","120분","출연배우",2, new java.sql.Date(System.currentTimeMillis()) ,9.9);
		MovieInfo movieInfo3 = new MovieInfo(3,"ㅁㅁㅁ", "poster.jpg", "액션","감독","120분","출연배우",3, new java.sql.Date(System.currentTimeMillis()) ,9.9);
		
		System.out.println("입력할 자료 :" + movieInfo1.toString()); 
		ret = movieInfoDB.insert("Movie.MovieInfo", movieInfo1);
		System.out.println("입력할 자료 :" + movieInfo2.toString()); 
		ret = movieInfoDB.insert("Movie.MovieInfo", movieInfo2);
//		System.out.println("입력할 자료 :" + movieInfo3.toString()); 
//		ret = movieInfoDB.insert("Movie.MovieInfo", movieInfo3);
		//2
		/*movieInfo.setId("jeong");
		movieInfo.setPassword("2222");
		movieInfo.setName("정형일");
		System.out.println("입력할 자료 :" + movieInfo.toString()); 
		ret = movieInfoDB.insert("movieInfo", movieInfo);
		//3
		movieInfo.setId("im");
		movieInfo.setPassword("3333");
		movieInfo.setName("임유경");
		System.out.println("입력할 자료 :" + movieInfo.toString()); 
		ret = movieInfoDB.insert("movieInfo", movieInfo);
*/
		
		System.out.println("insert 3개후 전체 출력  : ");
		movieInfo3.setmCode(0);
		
		
		luser = movieInfoDB.select("Movie.MovieInfo", movieInfo3);
		for (MovieInfo x : luser) {
			System.out.println("member : " + x.toString());
		}
		System.out.println("-----------------------------------"); 


		// find예제+insert예제 boolean
		if (!movieInfoDB.find("Movie.MovieInfo", movieInfo3)) {
			System.out.println("입력할 자료 : " + movieInfo3.toString()); 
			ret = movieInfoDB.insert("Movie.MovieInfo", movieInfo3);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + movieInfo3.toString());
		}

		
		

		// delete예제 
		
		System.out.println("delete 전 ALL 출력  : ");
		luser = movieInfoDB.select("Movie.MovieInfo", movieInfo3);
		for (MovieInfo x : luser) {
			System.out.println("member : " + x.toString());
		}
		System.out.println("-----------------------------------"); 
		
		movieInfo3.setmCode(3);
		ret = movieInfoDB.delete("Movie.MovieInfo", movieInfo3);
		
		System.out.println("delete 후 ALL 출력  : ");
		luser = movieInfoDB.select("Movie.MovieInfo", movieInfo3);
		for (MovieInfo x : luser) {
			System.out.println("member : " + x.toString());
		}
		System.out.println("-----------------------------------"); 

		// 사용한 디비 닫아줄것
		movieInfoDB.close();
	}
	
}
