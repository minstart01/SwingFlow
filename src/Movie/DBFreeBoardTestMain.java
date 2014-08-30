package Movie;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;
import Movie.DTO.FreeBoard;

public class DBFreeBoardTestMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				/**
				 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
				 * /SwingFlow/src/Common/FreeBoard.java ) 2.
				 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
				 * FreeBoardSqls.xml 참고할것 3.
				 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
				 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
				 * /SwingFlow/src/Shopping/DBTestMain.java )
				 * 
				 * <문법>
				 * 
				 * 사용 시작시: MyBatis<FreeBoard> freeBoardDB = new
				 * MyBatis<FreeBoard>(); 1. 객체를 문저 생성하여 사용할것 2. <FreeBoard> 은 자기가
				 * 작성한 디비 클라스이다.
				 * 
				 * 사용종료후: freeBoardDB.close() 1. 사용한 자원을 반납.
				 * 
				 * 사용 방법: boolean freeBoardDB.find(nameSpace, MyClassObject)
				 **/
				MyBatis<FreeBoard> freeBoardDB = new MyBatis<FreeBoard>("Movie.DTO.FreeBoard");
				int ret = 0;
				// 리턴값 받을 변수(List)
				List<FreeBoard> luser = null;

				// DB객체생성,값설정
				FreeBoard freeBoard1 = new FreeBoard(1,"제목","내용입니다.",new Date(System.currentTimeMillis()),1);
				FreeBoard freeBoard2 = new FreeBoard(1,"제목","내용입니다.",new Date(System.currentTimeMillis()),1);
				FreeBoard freeBoard3 = new FreeBoard(1,"제목","내용입니다.",new Date(System.currentTimeMillis()),1);

				
				// Test용DB insert

				// drop table
				freeBoardDB.drop();
				freeBoardDB.create();

				// 1
				System.out.println("입력할 자료 : " + freeBoard1.toString());
				ret = freeBoardDB.insert(freeBoard1);
				// 2
				System.out.println("입력할 자료 : " + freeBoard2.toString());
				ret = freeBoardDB.insert(freeBoard2);

				System.out.println("insert 2개후 전체 출력  : ");
				freeBoard3.setfNo(0);
				freeBoardDB.allListPrint(freeBoard3);

				// find예제+insert예제 boolean
				freeBoard3.setfNo(3);
				if (!freeBoardDB.find(freeBoard3)) {
					System.out.println("입력할 자료 : " + freeBoard3.toString());
					ret = freeBoardDB.insert(freeBoard3);
					System.out.println("insert count : " + ret);
				} else {
					System.out.println("find : " + freeBoard3.toString());
				}

				// delete예제

				System.out.println("delete 전 ALL 출력  : ");
				freeBoard3.setfNo(0);
				freeBoardDB.allListPrint(freeBoard3);

				freeBoard3.setfNo(3);
				ret = freeBoardDB.delete(freeBoard3);

				System.out.println("delete 후 ALL 출력  : ");
				freeBoard3.setfNo(0);
				freeBoardDB.allListPrint(freeBoard3);
				// 사용한 디비 닫아줄것
				freeBoardDB.close();

			}

		}
