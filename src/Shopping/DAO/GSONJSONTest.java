package Shopping.DAO;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

public class GSONJSONTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String jsonStr = "{\"a\": \"A\", \"b\" : \"B\" }";

		Gson gson = new Gson();
//		 gson = new Gson();
		JsonElement element = gson.fromJson (jsonStr, JsonElement.class);
		JsonObject jsonObj = element.getAsJsonObject();
		System.out.println("JSON : "+jsonObj.toString());
	}

}
