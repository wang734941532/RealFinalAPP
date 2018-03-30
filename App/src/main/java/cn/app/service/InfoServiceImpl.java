package cn.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.app.dao.InformationMapper;
import cn.app.pojo.Information;

@Service("infoService")
@Transactional
public class InfoServiceImpl implements InfoService {

	@Autowired
	private InformationMapper informationMapper;
	
	
	public void setInformationMapper(InformationMapper informationMapper) {
		this.informationMapper = informationMapper;
	}


	@Override
	public List<Information> getInfoByStatusId(int statusId,int pageCount,int pageSize) {
		List<Information> infoList = null;
		try {
		infoList = informationMapper.getInfoByStatusId(statusId,pageCount,pageSize);
		}catch(Exception e) {
			System.out.println("infoserviceImpl方法出错");
			e.printStackTrace();
			
		}
		
		return infoList;
	}


	@Override
	public Information getInfoById(int id) {
		Information info = null;
		
		try {
			info = informationMapper.getInfoById(id);
			
			}catch(Exception e) {
				
				System.out.println("infoserviceImpl方法出错");
				e.printStackTrace();
			}
			
		
		return info;
	}


	@Override
	public int getInfoCount() {
		int TotalPage = informationMapper.getInfoCount();
		
		return TotalPage;
	}


	@Override
	public int updateStatus(int value, int id) {
		int count = informationMapper.updateStatus(value, id);
		System.out.println(count);
		System.out.println(value);
		System.out.println(id);
		return count;
	}


	@Override
	public List<Information> getInfoList(int pageCount,int pageSize ) {
		
		return informationMapper.getInfoList(pageCount,pageSize);
	}


	@Override
	public List<Information> queryInfo(String softName, int sort1,int sort2,int sort3) {
		// TODO Auto-generated method stub
		return informationMapper.queryInfo(softName,sort1,sort2,sort3);
	}

}
