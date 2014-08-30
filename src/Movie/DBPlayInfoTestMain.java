package Movie;

import java.util.List;

import Common.MyBatis;
import Movie.DTO.PlayInfo;

public class DBPlayInfoTestMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				/**
				 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
				 * /SwingFlow/src/Common/PlayInfo.java ) 2.
				 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
				 * PlayInfoSqls.xml 참고할것 3.
				 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
				 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
				 * /SwingFlow/src/Shopping/DBTestMain.java )
				 * 
				 * <문법>
				 * 
				 * 사용 시작시: MyBatis<PlayInfo> playInfoDB = new
				 * MyBatis<PlayInfo>(); 1. 객체를 문저 생성하여 사용할것 2. <PlayInfo> 은 자기가
				 * 작성한 디비 클라스이다.
				 * 
				 * 사용종료후: playInfoDB.close() 1. 사용한 자원을 반납.
				 * 
				 * 사용 방법: boolean playInfoDB.find(nameSpace, MyClassObject)
				 **/
				MyBatis<PlayInfo> playInfoDB = new MyBatis<PlayInfo>("Movie.DTO.PlayInfo");
				int ret = 0;
				// 리턴값 받을 변수(List)
				List<PlayInfo> luser = null;

				// DB객체생성,값설정
				PlayInfo playInfo1 = new PlayInfo(1, 2, "8:00");
				PlayInfo playInfo2 = new PlayInfo(2, 1, "10:00");
				PlayInfo playInfo3 = new PlayInfo(2, 2, "12:00");

				
				// Test용DB insert

				// drop table
				playInfoDB.drop();
				playInfoDB.create();

				// 1
				System.out.println("입력할 자료 : " + playInfo1.toString());
				ret = playInfoDB.insert(playInfo1);
				// 2
				System.out.println("입력할 자료 : " + playInfo2.toString());
				ret = playInfoDB.insert(playInfo2);

				System.out.println("insert 2개후 전체 출력  : ");
				playInfo3.setMiNo(0);
				playInfoDB.allListPrint(playInfo3);

				// find예제+insert예제 boolean
				playInfo3.setMiNo(3);
				if (!playInfoDB.find(playInfo3)) {
					System.out.println("입력할 자료 : " + playInfo3.toString());
					ret = playInfoDB.insert(playInfo3);
					System.out.println("insert count : " + ret);
				} else {
					System.out.println("find : " + playInfo3.toString());
				}

				// delete예제

				System.out.println("delete 전 ALL 출력  : ");
				playInfo3.setMiNo(0);
				playInfoDB.allListPrint(playInfo3);

				playInfo3.setMiNo(10);
				ret = playInfoDB.delete(playInfo3);

				System.out.println("delete 후 ALL 출력  : ");
				playInfo3.setMiNo(0);
				playInfoDB.allListPrint(playInfo3);
				// 사용한 디비 닫아줄것
				playInfoDB.close();

			}

		}
