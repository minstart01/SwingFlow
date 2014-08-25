package Movie;

import java.util.List;

import Common.MyBatis;

public class DBChargeTestMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				/**
				 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
				 * /SwingFlow/src/Common/Charge.java ) 2.
				 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
				 * ChargeSqls.xml 참고할것 3.
				 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
				 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
				 * /SwingFlow/src/Shopping/DBTestMain.java )
				 * 
				 * <문법>
				 * 
				 * 사용 시작시: MyBatis<Charge> chargeDB = new
				 * MyBatis<Charge>(); 1. 객체를 문저 생성하여 사용할것 2. <Charge> 은 자기가
				 * 작성한 디비 클라스이다.
				 * 
				 * 사용종료후: chargeDB.close() 1. 사용한 자원을 반납.
				 * 
				 * 사용 방법: boolean chargeDB.find(nameSpace, MyClassObject)
				 **/
				MyBatis<Charge> chargeDB = new MyBatis<Charge>("Movie.Charge");
				int ret = 0;
				// 리턴값 받을 변수(List)
				List<Charge> luser = null;

				// DB객체생성,값설정
				Charge charge1 = new Charge(1, 8000, 9000);
				Charge charge2 = new Charge(2, 9000, 1000);
				Charge charge3 = new Charge(2, 9000, 9000);

				
				// Test용DB insert

				// drop table
				chargeDB.drop();
				chargeDB.create();

				// 1
				System.out.println("입력할 자료 : " + charge1.toString());
				ret = chargeDB.insert(charge1);
				// 2
				System.out.println("입력할 자료 : " + charge2.toString());
				ret = chargeDB.insert(charge2);

				System.out.println("insert 2개후 전체 출력  : ");
				charge3.setMiNo(0);
				chargeDB.allListPrint(charge3);

				// find예제+insert예제 boolean
				charge3.setMiNo(3);
				if (!chargeDB.find(charge3)) {
					System.out.println("입력할 자료 : " + charge3.toString());
					ret = chargeDB.insert(charge3);
					System.out.println("insert count : " + ret);
				} else {
					System.out.println("find : " + charge3.toString());
				}

				// delete예제

				System.out.println("delete 전 ALL 출력  : ");
				charge3.setMiNo(0);
				chargeDB.allListPrint(charge3);

				charge3.setMiNo(10);
				ret = chargeDB.delete(charge3);

				System.out.println("delete 후 ALL 출력  : ");
				charge3.setMiNo(0);
				chargeDB.allListPrint(charge3);
				// 사용한 디비 닫아줄것
				chargeDB.close();

			}

		}
