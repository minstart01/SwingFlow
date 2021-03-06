package Movie;

import java.sql.Date;
import java.util.List;

import Common.MyBatis;
import Movie.DTO.Reply;

public class DBReplyTestMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				/**
				 * DB사용주의사항(다른 사람것은 손대지 않는다). 1. DB용 Class 를 만든다.( ex.
				 * /SwingFlow/src/Common/Reply.java ) 2.
				 * /SwingFlow/WebContent/WEB-INF/classes/????Sqls.xml 파일을 만든다
				 * ReplySqls.xml 참고할것 3.
				 * /SwingFlow/WebContent/WEB-INF/classes/SwingFlowSqlMapConfig.xml 에 만든
				 * ????Sqls.xml 을 추가요청 (==>이영민) 4. 실제 메서드를 만든다 ( ex.
				 * /SwingFlow/src/Shopping/DBTestMain.java )
				 * 
				 * <문법>
				 * 
				 * 사용 시작시: MyBatis<Reply> replyDB = new
				 * MyBatis<Reply>(); 1. 객체를 문저 생성하여 사용할것 2. <Reply> 은 자기가
				 * 작성한 디비 클라스이다.
				 * 
				 * 사용종료후: replyDB.close() 1. 사용한 자원을 반납.
				 * 
				 * 사용 방법: boolean replyDB.find(nameSpace, MyClassObject)
				 **/
				MyBatis<Reply> replyDB = new MyBatis<Reply>("Movie.DTO.Reply");
				int ret = 0;
				// 리턴값 받을 변수(List)
				List<Reply> luser = null;

				// DB객체생성,값설정
				Reply reply1 = new Reply(1, 1 , "내용입니다.",new Date(System.currentTimeMillis()));
				Reply reply2 = new Reply(1,2,"내용입니다.",new Date(System.currentTimeMillis()));
				Reply reply3 = new Reply(1,2,"내용입니다.",new Date(System.currentTimeMillis()));

				
				// Test용DB insert

				// drop table
				replyDB.drop();
				replyDB.create();

				// 1
				System.out.println("입력할 자료 : " + reply1.toString());
				ret = replyDB.insert(reply1);
				// 2
				System.out.println("입력할 자료 : " + reply2.toString());
				ret = replyDB.insert(reply2);

				System.out.println("insert 2개후 전체 출력  : ");
				reply3.setfNo(0);
				replyDB.allListPrint(reply3);

				// find예제+insert예제 boolean
				reply3.setfNo(3);
				if (!replyDB.find(reply3)) {
					System.out.println("입력할 자료 : " + reply3.toString());
					ret = replyDB.insert(reply3);
					System.out.println("insert count : " + ret);
				} else {
					System.out.println("find : " + reply3.toString());
				}

				// delete예제

				System.out.println("delete 전 ALL 출력  : ");
				reply3.setfNo(0);
				replyDB.allListPrint(reply3);

				reply3.setfNo(3);
				ret = replyDB.delete(reply3);

				System.out.println("delete 후 ALL 출력  : ");
				reply3.setfNo(0);
				replyDB.allListPrint(reply3);
				// 사용한 디비 닫아줄것
				replyDB.close();

			}

		}
