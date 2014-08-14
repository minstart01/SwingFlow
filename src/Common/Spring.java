package Common;

import java.util.Locale;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Spring {
	private static Locale locale = Locale.getDefault();
	private static ApplicationContext context = new ClassPathXmlApplicationContext("MultiLanguage.xml");
	private static String nameSpace="";
	
	public static void setLocale(String str){
		if(null != str) {
			if(str.equals("korea")||str.equals("ko")){
				locale = Locale.KOREA;
			} else {
				locale = Locale.ENGLISH;
			}
		}
	}
	public static void setNameSpace(String para){
		nameSpace=para;
	}
	public static String getNameSpace(){
		return nameSpace;
	}
	public static String getLocale(){
		return locale.toLanguageTag();
	}
	public static String getMessage(String strCode){
		String ret = null;
		if((null==nameSpace)||(nameSpace.equals(""))){
			ret = context.getMessage(strCode, new Object[0],locale);
		} else {
			ret = context.getMessage(nameSpace+"."+strCode, new Object[0],locale);
		}
		return ret;
	}
}
