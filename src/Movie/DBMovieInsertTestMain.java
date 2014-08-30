package Movie;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;
import Movie.DTO.MovieInsert;

public class DBMovieInsertTestMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				/**
				 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
				 * /SwingFlow/src/Common/MovieInsert.java ) 2.
				 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
				 * MovieInsertSqls.xml 참고할것 3.
				 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
				 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
				 * /SwingFlow/src/Shopping/DBTestMain.java )
				 * 
				 * <문법>
				 * 
				 * 사용 시작시: MyBatis<MovieInsert> movieInsertDB = new
				 * MyBatis<MovieInsert>(); 1. 객체를 문저 생성하여 사용할것 2. <MovieInsert> 은 자기가
				 * 작성한 디비 클라스이다.
				 * 
				 * 사용종료후: movieInsertDB.close() 1. 사용한 자원을 반납.
				 * 
				 * 사용 방법: boolean movieInsertDB.find(nameSpace, MyClassObject)
				 **/
				MyBatis<MovieInsert> movieInsertDB = new MyBatis<MovieInsert>("Movie.DTO.MovieInsert");
				int ret = 0;
				// 리턴값 받을 변수(List)
				List<MovieInsert> luser = null;

				// DB객체생성,값설정
				MovieInsert movieInsert1 = new MovieInsert(1, 1, Date.valueOf("2014-08-21"), Date.valueOf("2014-08-21"));
				MovieInsert movieInsert2 = new MovieInsert(2, 2, Date.valueOf("2014-08-21"), Date.valueOf("2014-08-21"));
				MovieInsert movieInsert3 = new MovieInsert(1, 3, Date.valueOf("2014-08-21"), Date.valueOf("2014-08-21"));

				
				// Test용DB insert

				// drop table
				movieInsertDB.drop();
				movieInsertDB.create();

				// 1
				System.out.println("입력할 자료 : " + movieInsert1.toString());
				ret = movieInsertDB.insert(movieInsert1);
				// 2
				System.out.println("입력할 자료 : " + movieInsert2.toString());
				ret = movieInsertDB.insert(movieInsert2);

				System.out.println("insert 2개후 전체 출력  : ");
				movieInsert3.setMiNo(0);
				movieInsertDB.allListPrint(movieInsert3);

				// find예제+insert예제 boolean
				movieInsert3.setMiNo(3);
				if (!movieInsertDB.find(movieInsert3)) {
					System.out.println("입력할 자료 : " + movieInsert3.toString());
					ret = movieInsertDB.insert(movieInsert3);
					System.out.println("insert count : " + ret);
				} else {
					System.out.println("find : " + movieInsert3.toString());
				}

				// delete예제

				System.out.println("delete 전 ALL 출력  : ");
				movieInsert3.setMiNo(0);
				movieInsertDB.allListPrint(movieInsert3);

				movieInsert3.setMiNo(10);
				ret = movieInsertDB.delete(movieInsert3);

				System.out.println("delete 후 ALL 출력  : ");
				movieInsert3.setMiNo(0);
				movieInsertDB.allListPrint(movieInsert3);
				// 사용한 디비 닫아줄것
				movieInsertDB.close();

			}

		}
