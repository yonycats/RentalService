package item.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import kr.or.ddit.vo.ItemVO;

@WebServlet("/filterItems")
public class FilterItemsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");

		StringBuilder sb = new StringBuilder();
		try (BufferedReader reader = request.getReader()) {
			String line;
			while ((line = reader.readLine()) != null) {
				sb.append(line);
			}
		}

		try {
			HttpSession session = request.getSession();

			JSONObject json = new JSONObject(sb.toString());
			JSONArray brandArray = json.getJSONArray("brands");
			JSONArray companyArray = json.getJSONArray("companies");
			JSONArray optionArray = json.getJSONArray("options");

			List<String> brands = jsonArrayToList(brandArray);
			List<String> companies = jsonArrayToList(companyArray);
			List<String> options = jsonArrayToList(optionArray);

			List<ItemVO> categoryItemList = (List<ItemVO>) session.getAttribute("categoryItemList");
			List<ItemVO> filteredList = categoryItemList.stream()
					.filter(item -> brands.isEmpty() || brands.contains(item.getItemMake()))
					.filter(item -> companies.isEmpty() || companies.contains(item.getComName()))
					.filter(item -> options.isEmpty() || options.contains(item.getItemAttr()))
					.collect(Collectors.toList());
			
			StringBuilder html = new StringBuilder();
			for (ItemVO item : filteredList) {
				html.append("<a class='filterItem' href='").append(request.getContextPath()).append("/item/detail.do?itemId=")
						.append(item.getItemId()).append("' style='text-decoration: none'>")
						.append("<div class='product-item'>").append("<div>").append("<img src='")
						.append(request.getContextPath()).append("/views/images/product/").append(item.getStreFileNm())
						.append("' class='img-responsive' alt='Image' />").append("</div>")
						.append("<p class='modelName'>").append(item.getItemModel()).append("</p>")
						.append("<p class='productName'>").append(item.getItemName()).append("</p>")
						.append("<div class='rental'>").append("<p class='rental-fee'>월렌탈료</p>")
						.append("<p class='rental-amount'>").append(item.getItemM60())
						.append("<span class='rental-amount-won'>원</span></p>").append("</div>").append("</div>")
						.append("</a>");
			}

			JSONObject jsonResponse = new JSONObject();
			jsonResponse.put("html", html.toString());
			jsonResponse.put("count", filteredList.size());

			PrintWriter out = response.getWriter();
			out.print(jsonResponse.toString());
			out.flush();

		} catch (JSONException e) {
			e.printStackTrace();
			response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid JSON");
		}
	}

	private List<String> jsonArrayToList(JSONArray array) throws JSONException {
		List<String> list = new ArrayList<>();
		for (int i = 0; i < array.length(); i++) {
			list.add(array.getString(i));
		}
		return list;
	}
}
