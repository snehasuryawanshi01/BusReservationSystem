package com.dao;

import java.util.ArrayList;

import com.dto.BusDetails;

public interface BusDao {

	int addBus(BusDetails busDetails);
	ArrayList<BusDetails> showBus();
	BusDetails getbusUpdateInfo(int busId);
	int updateBusDetails(BusDetails busDetails);
	int deleteBus(int busId);
	ArrayList<BusDetails> getSource();
	ArrayList<BusDetails> getDestination();
	ArrayList<BusDetails> searchBus(String source,String destination,String date);
	int UpdateBookedSeats(int busId,int bookedSeats,int availableSeats );
	//int UpdateAvailableSeats(int busId,int availableSeats);
}
