package org.swaphome.controller;

import java.io.File;
import java.net.InetAddress;
import java.rmi.UnknownHostException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

public class EditorController {

	private String getServerIp() {
		
		InetAddress local = null;
		try {
			local = InetAddress.getLocalHost();
		} catch(UnknownHostException e) {
			e.printStackTrace();
		}
		
		if(local == null) {
			return "";
		} else {
			String ip = local.getHostAddress();
			return ip;
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/ckeditor/ckeditor5ImageUpload.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String ckeditor5ImageUpload(HttpServletRequest request, HttpServletResponse response, @RequestParam MultipartFile upload) throws Exception {

		String url = null;

		try {

			final String uploadDir = GlobalsProperties.getProperty("Globals.ckeditorFileStorePath");

			final long maxFileSize = 1024 * 1024 * 600;

			List<EgovFormBasedFileVo> list = EgovFileUploadUtil.uploadFiles(request, uploadDir, maxFileSize);

			if(list == null){
				return "{ \"uploaded\" : false, \"error\": { \"message\": \"업로드 중 에러가 발생했습니다.\" } }";
			}else{
				if (list.size() > 0) {
					EgovFormBasedFileVo vo = list.get(0); // 첫번째 이미지

					url = request.getContextPath() + 
	                			"/utl/web/imageSrcCkediror.do?" + 
	                			"path=" + vo.getServerSubPath() + 
	                			"&physical=" + vo.getPhysicalName() + 
	                			"&contentType=" + vo.getContentType();

				}
				return "{ \"uploaded\" : true, \"url\" : \"" + url + "\" }";

			}

		} catch (IOException e) {
			e.printStackTrace();
		} finally {

		}	
		return "{ \"uploaded\" : false, \"error\": { \"message\": \"업로드 중 에러가 발생했습니다. 다시 시도해 주세요.\" } }";
	}
	
}
