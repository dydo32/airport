package main.realtime.api;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Service;

@Service
public class mainAPI {
	public int mainCount(String what) {
		int count = 0;
		int startcount = 0;
		SimpleDateFormat sdf = new SimpleDateFormat("HHmm");
		Calendar cal = new GregorianCalendar();
		String curTime = sdf.format(cal.getTime());
		System.out.println(curTime);
		
		StringBuilder urlBuilder = new StringBuilder(
				"http://openapi.airport.kr/openapi/service/StatusOfPassengerFlights/getPassengerDepartures");
		try {
			urlBuilder.append("?" + URLEncoder.encode("ServiceKey", "UTF-8")
					+ "=SIiebQZNZnHWh2wfaDQr3sqEbhZH5dOGGBBnUuGTfGX0YfQLrVkPYI9IoYeHbFV0b2x0TxmtG873O%2BSlIjb8WA%3D%3D");
			urlBuilder.append("&" + URLEncoder.encode("to_time", "UTF-8") + "=" + URLEncoder.encode(curTime, "UTF-8"));
			urlBuilder.append("&" + URLEncoder.encode("lang", "UTF-8") + "=" + URLEncoder.encode("K", "UTF-8"));
			urlBuilder.append("&" + URLEncoder.encode("from_time", "UTF-8") + "=" + URLEncoder.encode("0000", "UTF-8"));
			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/json");
			conn.setRequestProperty("Accept", "application/json");
			BufferedReader rd;
			if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
				rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			} else {
				rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
			}
			StringBuilder sb = new StringBuilder();
			String line;
			while ((line = rd.readLine()) != null) {
				sb.append(line);
			}

			rd.close();
			conn.disconnect();
			String lines = sb.toString();

			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObj = (JSONObject) jsonParser.parse(lines);

			JSONObject root = (JSONObject) jsonObj.get("response");
			JSONObject body = (JSONObject) root.get("body");

			if (!body.get("items").equals("")) {
				JSONObject items = (JSONObject) body.get("items");
				JSONArray item = (JSONArray) items.get("item");
				startcount = item.size();
				System.out.println("비행기:" + item.size());
				for (int i = 0; i < item.size(); i++) {
					JSONObject tempObj = (JSONObject) item.get(i);
					if (((String)tempObj.get("remark")).equals(what)) {
						count++;
					}
				}
			}
		} catch (ParseException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (ProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println(count);
		
		return count;
	}

}
