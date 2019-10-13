package main.realtime.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.AbstractView;

import erp.pf.service.PFService;
import main.PP.controller.PredictPassenger;
import main.PP.dto.PredictPassengerDTO;
import main.realtime.api.mainAPI;

@Controller
public class IndexController extends AbstractView{

	@Autowired
	PFService service;
	@Autowired
	PredictPassenger ppservice;
	@Autowired
	mainAPI mainService;
	
	
	@RequestMapping("/main/index.do")
	public String main(Model model) {

		ArrayList<PredictPassengerDTO> ppinfolist1 = null;
		SimpleDateFormat sdf = new SimpleDateFormat("HH");
		Calendar cal = new GregorianCalendar();
		String curTime = sdf.format(cal.getTime());
		System.out.println(curTime);
		int passengerresult = 0;
		try {
			ppinfolist1 =  ppservice.PredictPassenger("0");
			
			for(int i=0; i<ppinfolist1.size(); i++) {
				PredictPassengerDTO ppinfo = ppinfolist1.get(i);
				String atime = ppinfo.getAtime().substring(0, 2);
				if(!atime.equals("합계") && Integer.parseInt(atime)==Integer.parseInt(curTime)) {
					passengerresult = (int) (passengerresult + ppinfolist1.get(i).getT1sum5()
							+ ppinfolist1.get(i).getT1sum6()
							+ ppinfolist1.get(i).getT1sum7()+ ppinfolist1.get(i).getT1sum8()
							+ ppinfolist1.get(i).getT2sum3()+ppinfolist1.get(i).getT2sum4());
				}
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("todayflight", mainService.mainCount("출발")+"");
		model.addAttribute("passengerresult", passengerresult);
		model.addAttribute("todaydelay", mainService.mainCount("지연")+"");
		model.addAttribute("todaycancel", mainService.mainCount("결항")+"");
		model.addAttribute("ppinfolist1", ppinfolist1);

		return "index";
	}

	@RequestMapping("/main/signin.do")
	public String signin() {
		return "signin";
	}

	@RequestMapping("/main/privacy")
	public String privacy() {
		return "privacy";
	}
	
	@RequestMapping("/main/email")
	public String rejectEmail() {
		return "email";
	}

	@Override
	protected void renderMergedOutputModel(Map<String, Object> arg0, HttpServletRequest arg1, HttpServletResponse arg2)
			throws Exception {
		
	}
}