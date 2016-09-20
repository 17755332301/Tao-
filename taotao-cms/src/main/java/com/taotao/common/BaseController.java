package com.taotao.common;

import com.google.gson.Gson;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;


public class BaseController {
	protected final Logger  log = LoggerFactory.getLogger(this.getClass()); 
	protected Gson gson = new Gson();
	

	
	protected void sentResponseInfo(HttpServletResponse response,String info){
		response.setContentType("text/plain; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		Writer out = null;
		try {
			out = response.getWriter();
			out.write(info);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	protected void sentResponseData(HttpServletResponse response,String data){
		response.setContentType("text/html; charset=UTF-8");
        response.setHeader("Cache-Control", "no-cache");
		response.setCharacterEncoding("UTF-8");
        PrintWriter out = null;
		try {
			out = response.getWriter();
			out.println(data);
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			out.flush();
			out.close();
		}
	}
	
	protected String getRequestData(HttpServletRequest request) {
		StringBuilder result = new StringBuilder();
		String line = null;
		try {
			BufferedReader in = new BufferedReader(new InputStreamReader(request.getInputStream(), "utf-8"));
			while ((line = in.readLine()) != null) {
				result.append(line);
			}
			in.close();
		} catch(Exception e) {
			log.error("获取request请求的数据失败。");
		}
		return result.toString();
	}

	public String getEncoder(String str){
		if(str!=null&&str.length()>0){
			try {
				return URLEncoder.encode(str, "UTF-8");
			} catch (UnsupportedEncodingException e) {
				return "";
			}
		}else{
			return "";
		}
		
	}
	
	
	public static void outJson(HttpServletResponse response,Object object){
		response.setContentType("text/html");
		response.setHeader("Content-Type","text/html; charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = null;
		try {
			 out = response.getWriter();
			 JSONObject fromObject = JSONObject.fromObject(object);
			 out.print(fromObject);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public static void outJsonArray(HttpServletResponse response,Object object){
		response.setContentType("text/html");
		response.setHeader("Content-Type","text/html; charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = null;
		try {
			 out = response.getWriter();
			 JSONArray fromObject = JSONArray.fromObject(object);
			 out.print(fromObject);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public void callBack(HttpServletResponse response,
			HttpServletRequest request, String info) {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		String jsonpcallback = request.getParameter("jsonpcallback");
		String scriptcallback = request.getParameter("scriptcallback");
		String callback = request.getParameter("callback");

		response.setDateHeader("Expires", 0);
		String result = null;
		if (jsonpcallback != null) {
			result = jsonpcallback + "('" + info + "' )";

		} else if (callback != null) {
			result = callback + "('" + info + "')";
		} else if (scriptcallback != null) {
			response.setHeader("Content-Type", "text/html; charset=utf-8");
			result = "<script>" + scriptcallback + "( " + info + " ) </script>";
		} else {
			result = info;
		}
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (out != null) {
				System.out.println(result);
				out.print(result);
				out.flush();
				out.close();
			}
		}
	}
}
