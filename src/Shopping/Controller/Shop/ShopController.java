package Shopping.Controller.Shop;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Common.MyBatis;
import Shopping.DTO.DivGubun;
import Shopping.DTO.Shop;

@Controller
public class ShopController {

	@RequestMapping("/Category/Shopping/Shop/ShopJoin.do")
	public ModelAndView shopJoin(Shop shop) {
		ModelAndView mv = new ModelAndView();
		  // view 설정
		mv.setViewName("ShopJoinView"); // view의 이름을 제공
//		 	뷰이름 바꾸세요 LYM 
		ArrayList<String> list = new ArrayList<String>();

		MyBatis<Shop> myShopDB = new MyBatis<Shop>("Shopping.Shop");
		list = (ArrayList<String>)myShopDB.nameSql("MaxNumber",
				"NVL(MAX(shopSeq), 0)+1");
//		int maxNumber = Integer.parseInt((String) maxNumbers.get(0));
//		 list.add(member);
		mv.addObject("maxShopSeqNumber", (String)list.get(0));
		return mv;
	}
	
	@RequestMapping("/Category/Shopping/Shop/DivGubunJoin.do")
	public ModelAndView divGubunJoin(DivGubun divGubun) {
		ModelAndView mv = new ModelAndView();
		  // view 설정
		mv.setViewName("DivGubunJoinView"); // view의 이름을 제공
//		 	뷰이름 바꾸세요 LYM 
		ArrayList<String> list = new ArrayList<String>();

		MyBatis<DivGubun> myDB = new MyBatis<DivGubun>("Shopping.DivGubun");
		list = (ArrayList<String>)myDB.nameSql("MaxNumber",
				"NVL(MAX(shopSeq), 0)+1");
//		int maxNumber = Integer.parseInt((String) maxNumbers.get(0));
//		 list.add(member);
		mv.addObject("maxShopSeqNumber", (String)list.get(0));
		return mv;
	}
}
