package com.service;

import java.util.ArrayList;

import com.dao.AdminDao;
import com.dao.AdminDaoImple;
import com.dao.BusDao;
import com.dao.BusDaoImple;
import com.dao.UserDao;
import com.dto.BusDetails;

public class BusServiceImple implements BusService {

	private BusDao busDao;
	
	
	public BusServiceImple() {
		
		busDao =new BusDaoImple();
	}

	@Override
	public int addBus(BusDetails busDetails) {
		
		return busDao.addBus(busDetails);
	}

	@Override
	public ArrayList<BusDetails> showBus() {
		
		return busDao.showBus();
	}

	@Override
	public BusDetails getbusUpdateInfo(int busId) {
		
		return busDao.getbusUpdateInfo(busId);
	}

	@Override
	public int updateBusDetails(BusDetails busDetails) {
		
		return busDao.updateBusDetails(busDetails);
	}

	@Override
	public int deleteBus(int busId) {
		
		return busDao.deleteBus(busId);
	}

	@Override
	public ArrayList<BusDetails> getSource() {
		
		return busDao.getSource();
	}

	@Override
	public ArrayList<BusDetails> getDestination() {
		
		return busDao.getDestination();
	}

	@Override
	public ArrayList<BusDetails> searchBus(String source, String destination, String date) {
		
		return busDao.searchBus(source, destination, date);
	}

	@Override
	public int UpdateBookedSeats(int busId, int bookedSeats,int availableSeats) {
		
		return busDao.UpdateBookedSeats(busId, bookedSeats,availableSeats);
	}

//	@Override
//	public int UpdateAvailableSeats(int busId, int availableSeats) {
//		
//		return busDao.UpdateAvailableSeats(busId, availableSeats);
//	}



}
