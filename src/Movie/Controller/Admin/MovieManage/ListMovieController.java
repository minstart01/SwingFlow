package Movie.Controller.Admin.MovieManage;
import java.util.ArrayList;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Common.MyBatis;
import Movie.MovieInfo;
import Shopping.Shop;

@Controller
public class ListMovieController {

	@RequestMapping("/Category/Movie/Admin/MovieManage/ListMovie.do")
	public ModelAndView ListMovie() {
		ModelAndView mv = new ModelAndView();
		  // view 설정
		mv.setViewName("ListMovieView"); // view의 이름을 제공
//		 	뷰이름 바꾸세요 LYM 
//		ArrayList<String> list = new ArrayList<String>();
//
//		MyBatis<Shop> myShopDB = new MyBatis<Shop>("Movie.MovieInfo");
//		MovieInfo minfo = new MovieInfo();
//		minfo.setmCode(0);
//		minfo.setmName(mName);
//		list = (ArrayList<String>)myShopDB.select()
//				"NVL(MAX(shopSeq), 0)+1");
////		int maxNumber = Integer.parseInt((String) maxNumbers.get(0));
////		 list.add(member);
//		mv.addObject("maxShopSeqNumber", (String)list.get(0));
		return mv;
	}
}
