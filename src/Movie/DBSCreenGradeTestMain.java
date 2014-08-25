package Movie;

import java.util.List;

import Common.MyBatis;
import Movie.ScreenGrade;

public class DBSCreenGradeTestMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/**
		 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
		 * /SwingFlow/src/Common/screenGrade.java ) 2.
		 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
		 * screenGradeSqls.xml 참고할것 3.
		 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
		 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
		 * /SwingFlow/src/Shopping/DBTestMain.java )
		 * 
		 * <문법>
		 * 
		 * 사용 시작시: MyBatis<screenGrade> screenGradeDB = new
		 * MyBatis<screenGrade>(); 1. 객체를 문저 생성하여 사용할것 2. <screenGrade> 은 자기가
		 * 작성한 디비 클라스이다.
		 * 
		 * 사용종료후: screenGradeDB.close() 1. 사용한 자원을 반납.
		 * 
		 * 사용 방법: boolean screenGradeDB.find(nameSpace, MyClassObject)
		 **/
		MyBatis<ScreenGrade> screenGradeDB = new MyBatis<ScreenGrade>(
				"Movie.ScreenGrade");
		int ret = 0;
		// 리턴값 받을 변수(List)
		List<ScreenGrade> luser = null;

		// DB객체생성,값설정
		ScreenGrade screenGrade1 = new ScreenGrade(1, "전체 관람가");
		ScreenGrade screenGrade2 = new ScreenGrade(2, "12세 이상 관람가");
		ScreenGrade screenGrade3 = new ScreenGrade(3, "삭제데이터");

		// Test용DB insert

		// drop table
		screenGradeDB.drop();
		screenGradeDB.create();

		// 1
		System.out.println("입력할 자료 : " + screenGrade1.toString());
		ret = screenGradeDB.insert(screenGrade1);
		// 2
		System.out.println("입력할 자료 : " + screenGrade2.toString());
		ret = screenGradeDB.insert(screenGrade2);

		System.out.println("insert 2개후 전체 출력  : ");
		screenGrade3.setsCode(0);
		screenGradeDB.allListPrint(screenGrade3);

		// find예제+insert예제 boolean
		screenGrade3.setsCode(3);
		if (!screenGradeDB.find(screenGrade3)) {
			System.out.println("입력할 자료 : " + screenGrade3.toString());
			ret = screenGradeDB.insert(screenGrade3);
			System.out.println("insert count : " + ret);
		} else {
			System.out.println("find : " + screenGrade3.toString());
		}

		// delete예제

		System.out.println("delete 전 ALL 출력  : ");
		screenGrade3.setsCode(0);
		screenGradeDB.allListPrint(screenGrade3);

		screenGrade3.setsCode(3);
		ret = screenGradeDB.delete(screenGrade3);

		System.out.println("delete 후 ALL 출력  : ");
		screenGrade3.setsCode(0);
		screenGradeDB.allListPrint(screenGrade3);
		// 사용한 디비 닫아줄것
		screenGradeDB.close();

	}

}
