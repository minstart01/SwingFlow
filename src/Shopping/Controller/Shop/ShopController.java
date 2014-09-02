package Shopping.Controller.Shop;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Common.MyBatis;
import Shopping.DTO.DivGubun;
import Shopping.DTO.Shop;

@Controller
public class ShopController {

	@RequestMapping(value="/Category/Shopping/Shop/ShopInput.do")
	public ModelAndView shopInput(Shop shop) {
		ModelAndView mv = new ModelAndView();
		  // view 설정
		mv.setViewName("ShopInputView"); // view의 이름을 제공
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
	
	@RequestMapping(value="/Category/Shopping/Shop/DivGubunInput.do")
	public ModelAndView divGubunInput(DivGubun divGubun) {
		ModelAndView mv = new ModelAndView();
		  // view 설정
		mv.setViewName("DivGubunInputView"); // view의 이름을 제공
//		 	뷰이름 바꾸세요 LYM 
		ArrayList<String> list = new ArrayList<String>();

		MyBatis<DivGubun> myDB = new MyBatis<DivGubun>("Shopping.DivGubun");
		list = (ArrayList<String>)myDB.nameSql("MaxNumber",
				"NVL(MAX(divSeq), 0)+1");
//		int maxNumber = Integer.parseInt((String) maxNumbers.get(0));
//		 list.add(member);
		mv.addObject("maxDivSeqNumber", (String)list.get(0));
		return mv;
	}
	
	@RequestMapping(value="/Category/Shopping/Shop/DivGubunSearch.do")
	public ModelAndView divGubunSearch(DivGubun divGubun) {
		ModelAndView mv = new ModelAndView();
		  // view 설정
		mv.setViewName("DivGubunSearchView"); // view의 이름을 제공
//		 	뷰이름 바꾸세요 LYM 
		List<DivGubun> list = new ArrayList<DivGubun>();
		
		MyBatis<DivGubun> myDB = new MyBatis<DivGubun>("Shopping.DivGubun");
		
		divGubun.setDivSeq(0);
		list = myDB.select(divGubun);
//		int maxNumber = Integer.parseInt((String) maxNumbers.get(0));
//		 list.add(member);
		mv.addObject("lists", list);
		return mv;
	}
}
