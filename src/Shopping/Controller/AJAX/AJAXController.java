package Shopping.Controller.AJAX;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import Common.MyBatis;
import Shopping.DTO.DivGubun;
import Shopping.DTO.Shop;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping(value = "/Category/Shopping/Shop/requestShopAJAX.ajax", produces = "application/json;charset=UTF-8")
public class AJAXController {
	@RequestMapping(params = "request=divGubunInputDB",produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String divGubunInputDB(@RequestParam String divGubun) {

		Gson gson = new GsonBuilder().serializeNulls().create();
		DivGubun divGubunObj = gson.fromJson(divGubun, DivGubun.class);

		MyBatis<DivGubun> myDB = new MyBatis<DivGubun>("Shopping.DivGubun");
		int ret = myDB.insert(divGubunObj);
		Map<String, Object> message = new HashMap<String, Object>();
		if (1 == ret) {
			message.put("result", "OK");
//            message.put("message", null);
            message.put("data", "insert="+ret);
		} else {
			message.put("result", "ERROR");
//            message.put("message", "insert="+ret);
            message.put("data", null);
		}
		return gson.toJson(message);
	}
	
	@RequestMapping(params = "request=shopInputDB",produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String shopInputDB(@RequestParam String shop) {

		Gson gson = new GsonBuilder().serializeNulls().create();
		Shop shopObj = gson.fromJson(shop, Shop.class);

		MyBatis<Shop> myDB = new MyBatis<Shop>("Shopping.Shop");
		int ret = myDB.insert(shopObj);
		Map<String, Object> message = new HashMap<String, Object>();
		if (1 == ret) {
			message.put("result", "OK");
            message.put("data", "insert="+ret);
		} else {
			message.put("result", "ERROR");
            message.put("data", "insert="+ret);
		}
		return gson.toJson(message);
	}
	
	@RequestMapping(params = "request=divGubunSearchDB",produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String divGubunSearchDB(@RequestParam String divGubun) {

		Gson gson = new GsonBuilder().serializeNulls().create();
		DivGubun divGubunObj = gson.fromJson(divGubun, DivGubun.class);

		MyBatis<DivGubun> myDB = new MyBatis<DivGubun>("Shopping.DivGubun");
		divGubunObj.setDivSeq(0);
		List<DivGubun> list = myDB.select(divGubun);
		Map<String, Object> message = new HashMap<String, Object>();
		if (0 < list.size()) {
			message.put("result", "OK");
            message.put("data", list);
		} else {
			message.put("result", "ERROR");
            message.put("data", "select="+list.size());
		}
		return gson.toJson(message);
	}
}
