package Movie;

import java.util.List;

import Common.MyBatis;

public class DBMovieReserveTestMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				/**
				 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
				 * /SwingFlow/src/Common/MovieReserve.java ) 2.
				 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
				 * MovieReserveSqls.xml 참고할것 3.
				 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
				 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
				 * /SwingFlow/src/Shopping/DBTestMain.java )
				 * 
				 * <문법>
				 * 
				 * 사용 시작시: MyBatis<MovieReserve> movieReserveDB = new
				 * MyBatis<MovieReserve>(); 1. 객체를 문저 생성하여 사용할것 2. <MovieReserve> 은 자기가
				 * 작성한 디비 클라스이다.
				 * 
				 * 사용종료후: movieReserveDB.close() 1. 사용한 자원을 반납.
				 * 
				 * 사용 방법: boolean movieReserveDB.find(nameSpace, MyClassObject)
				 **/
				MyBatis<MovieReserve> movieReserveDB = new MyBatis<MovieReserve>("Movie.MovieReserve");
				int ret = 0;
				// 리턴값 받을 변수(List)
				List<MovieReserve> luser = null;

				// DB객체생성,값설정
				MovieReserve movieReserve1 = new MovieReserve(3, 2, 29000);
				MovieReserve movieReserve2 = new MovieReserve(2, 1, 30000);
				MovieReserve movieReserve3 = new MovieReserve(3, 3, 40000);

				
				// Test용DB insert

				// drop table
				movieReserveDB.drop();
				movieReserveDB.create();

				// 1
				System.out.println("입력할 자료 : " + movieReserve1.toString());
				ret = movieReserveDB.insert(movieReserve1);
				// 2
				System.out.println("입력할 자료 : " + movieReserve2.toString());
				ret = movieReserveDB.insert(movieReserve2);

				System.out.println("insert 2개후 전체 출력  : ");
				movieReserve3.setrNo(0);
				movieReserveDB.allListPrint(movieReserve3);

				// find예제+insert예제 boolean
				movieReserve3.setrNo(3);
				if (!movieReserveDB.find(movieReserve3)) {
					System.out.println("입력할 자료 : " + movieReserve3.toString());
					ret = movieReserveDB.insert(movieReserve3);
					System.out.println("insert count : " + ret);
				} else {
					System.out.println("find : " + movieReserve3.toString());
				}

				// delete예제

				System.out.println("delete 전 ALL 출력  : ");
				movieReserve3.setrNo(0);
				movieReserveDB.allListPrint(movieReserve3);

				movieReserve3.setrNo(10);
				ret = movieReserveDB.delete(movieReserve3);

				System.out.println("delete 후 ALL 출력  : ");
				movieReserve3.setrNo(0);
				movieReserveDB.allListPrint(movieReserve3);
				// 사용한 디비 닫아줄것
				movieReserveDB.close();

			}

		}
