package Common;

import java.util.Locale;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Spring {
	private static Locale locale = Locale.getDefault();
	private static ApplicationContext context = new ClassPathXmlApplicationContext("MultiLanguage.xml");
	
	public static void setLocale(String str){
		if(null != str) {
			if(str.equals("korea")||str.equals("ko")){
				locale = Locale.KOREA;
			} else {
				locale = Locale.ENGLISH;
			}
		}
	}
	public static String getLocale(){
		return locale.toLanguageTag();
	}
	public static String getMessage(String strCode){
		String ret = context.getMessage(strCode, new Object[0],locale);
		return ret;
	}
}
