package Movie;

import java.util.List;

import Common.MyBatis;

public class DBMovieInfoMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				/**
				 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
				 * /SwingFlow/src/Common/MovieInfo.java ) 2.
				 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
				 * MovieInfoSqls.xml 참고할것 3.
				 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
				 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
				 * /SwingFlow/src/Shopping/DBTestMain.java )
				 * 
				 * <문법>
				 * 
				 * 사용 시작시: MyBatis<MovieInfo> movieInfoDB = new
				 * MyBatis<MovieInfo>(); 1. 객체를 문저 생성하여 사용할것 2. <MovieInfo> 은 자기가
				 * 작성한 디비 클라스이다.
				 * 
				 * 사용종료후: movieInfoDB.close() 1. 사용한 자원을 반납.
				 * 
				 * 사용 방법: boolean movieInfoDB.find(nameSpace, MyClassObject)
				 **/
				MyBatis<MovieInfo> movieInfoDB = new MyBatis<MovieInfo>("Movie.MovieInfo");
				int ret = 0;
				// 리턴값 받을 변수(List)
				List<MovieInfo> luser = null;

				// DB객체생성,값설정
				MovieInfo movieInfo1 = new MovieInfo("군도","POSTER.JPG","액션","감독","상영시간","배우",1, java.sql.Date.valueOf("2014-08-21"));
				MovieInfo movieInfo2 = new MovieInfo("명량","POSTER.JPG","액션","감독1","상영시간","배우",2,java.sql.Date.valueOf("2014-08-21"));
				MovieInfo movieInfo3 = new MovieInfo("해적","POSTER.JPG","액션","감독2","상영시간","배우",3,java.sql.Date.valueOf("2014-08-21"));

				
				// Test용DB insert

				// drop table
				movieInfoDB.drop();
				movieInfoDB.create();

				// 1
				System.out.println("입력할 자료 : " + movieInfo1.toString());
				ret = movieInfoDB.insert(movieInfo1);
				// 2
				System.out.println("입력할 자료 : " + movieInfo2.toString());
				ret = movieInfoDB.insert(movieInfo2);

				System.out.println("insert 2개후 전체 출력  : ");
				movieInfo3.setmCode(0);
				movieInfoDB.allListPrint(movieInfo3);

				// find예제+insert예제 boolean
				movieInfo3.setmCode(3);
				if (!movieInfoDB.find(movieInfo3)) {
					System.out.println("입력할 자료 : " + movieInfo3.toString());
					ret = movieInfoDB.insert(movieInfo3);
					System.out.println("insert count : " + ret);
				} else {
					System.out.println("find : " + movieInfo3.toString());
				}

				// delete예제

				System.out.println("delete 전 ALL 출력  : ");
				movieInfo3.setmCode(0);
				movieInfoDB.allListPrint(movieInfo3);

				movieInfo3.setmCode(3);
				ret = movieInfoDB.delete(movieInfo3);

				System.out.println("delete 후 ALL 출력  : ");
				movieInfo3.setmCode(0);
				movieInfoDB.allListPrint(movieInfo3);
				// 사용한 디비 닫아줄것
				movieInfoDB.close();

			}

		}
