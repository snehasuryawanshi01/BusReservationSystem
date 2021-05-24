package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.conn.MyConn;
import com.dto.BusDetails;
import com.sun.org.apache.bcel.internal.generic.TargetLostException;

import sun.awt.image.PixelConverter.ArgbBm;

public class BusDaoImple implements BusDao{
	
	private MyConn myConn;

	public BusDaoImple() {
		
		myConn=new MyConn();
	}

	@Override
	public int addBus(BusDetails busDetails) {
	

		int i=0;
		try {
			Connection con=myConn.getConn();
			PreparedStatement s=con.prepareStatement("insert into busdetails (source,destination,date,time,available_seats,booked_seats,amount)values(?,?,?,?,?,?,?)");
			s.setString(1,busDetails.getSource());
			s.setString(2, busDetails.getDestination());
			s.setString(3, busDetails.getDate());
			s.setString(4, busDetails.getTime());
			s.setInt(5, busDetails.getAvailableSeats());
			s.setInt(6, busDetails.getBookedSeats());
			s.setFloat(7, busDetails.getAmount());
			i=s.executeUpdate();
			
			con.close();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
 		
		return i;
	}
	

	@Override
	public ArrayList<BusDetails> showBus() {
	
		ArrayList<BusDetails> list = new ArrayList<>();
		try {
		Connection con = myConn.getConn();
		PreparedStatement s = con.prepareStatement("select * from busdetails");
		ResultSet rs = s.executeQuery();
		while(rs.next()) {
			BusDetails b = new BusDetails();

			b.setBusId(rs.getInt("bus_id"));
			b.setSource(rs.getString("source"));
			b.setDestination(rs.getString("destination"));
			b.setDate(rs.getString("date"));
			b.setTime(rs.getString("time"));
			b.setAvailableSeats(rs.getInt("available_seats"));
			b.setBookedSeats(rs.getInt("booked_seats"));
			b.setAmount(rs.getInt("amount"));
			list.add(b);
		}
		s.close();
		}catch ( SQLException | ClassNotFoundException e) {
		
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public BusDetails getbusUpdateInfo(int busId) {
		BusDetails b = new BusDetails();
		try {
			Connection con = myConn.getConn();
			PreparedStatement s = con.prepareStatement("select * from busdetails where bus_id=?");
			s.setInt(1, busId);
			ResultSet rs = s.executeQuery();
			if(rs.next()) {
				b.setBusId(rs.getInt("bus_id"));
				b.setSource(rs.getString("source"));
				b.setDestination(rs.getString("destination"));
				b.setDate(rs.getString("date"));
				b.setTime(rs.getString("time"));
				b.setAvailableSeats(rs.getInt("available_seats"));
				b.setBookedSeats(rs.getInt("booked_seats"));
				b.setAmount(rs.getInt("amount"));
			}
			s.close();
			}catch ( SQLException | ClassNotFoundException e) {
				
				e.printStackTrace();
			}
			
			return b;
	}

	@Override
	public int updateBusDetails(BusDetails busDetails) {
		int i = 0;
		try {
		Connection con = myConn.getConn();
		PreparedStatement s;
		
			s = con.prepareStatement("update busdetails set source=? , destination=?,date=?,time=?,available_seats=?,booked_seats=?,amount=? where bus_id=?");
			System.out.println(busDetails);
			s.setString(1, busDetails.getSource());
			s.setString(2, busDetails.getDestination());
			s.setString(3,  busDetails.getDate());
			s.setString(4, busDetails.getTime());
			s.setInt(5, busDetails.getAvailableSeats());
			s.setInt(6, busDetails.getBookedSeats());
			s.setFloat(7, busDetails.getAmount());
			s.setInt(8, busDetails.getBusId());
			
			i = s.executeUpdate();
			s.close();
		} catch (SQLException | ClassNotFoundException e) {
		
			e.printStackTrace();
		}
		
		return i;
	}

	@Override
	public int deleteBus(int busId) {
		int i = 0;
		try {
		Connection con = myConn.getConn();
		PreparedStatement s = con.prepareStatement("delete from busdetails where bus_id = ?");
		s.setInt(1, busId);
		i = s.executeUpdate();
		s.close();
		}catch (SQLException | ClassNotFoundException e) {
		
			e.printStackTrace();
		}
		return i;
	}

	@Override
	public ArrayList<BusDetails> getSource() {
		ArrayList<BusDetails> list = new ArrayList<>();
		try {
		Connection con = myConn.getConn();
		PreparedStatement s = con.prepareStatement("select distinct source from busdetails");
		ResultSet rs = s.executeQuery();
		while(rs.next()) {
			BusDetails b = new BusDetails();
			b.setSource(rs.getString("source"));
			list.add(b);
		}
		s.close();
		}catch ( SQLException | ClassNotFoundException e) {
		
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public ArrayList<BusDetails> getDestination() {
		ArrayList<BusDetails> list1 = new ArrayList<>();
		try {
		Connection con = myConn.getConn();
		PreparedStatement s = con.prepareStatement("select distinct destination from busdetails");
		ResultSet rs = s.executeQuery();
		while(rs.next()) {
			BusDetails b = new BusDetails();
			b.setDestination(rs.getString("destination"));
			list1.add(b);
		}
		s.close();
		}catch ( SQLException | ClassNotFoundException e) {
		
			e.printStackTrace();
		}
		
		return list1;
	}

	@Override
	public ArrayList<BusDetails> searchBus(String source, String destination, String date) {
		ArrayList<BusDetails> list = new ArrayList<>();
		try {
		Connection con = myConn.getConn();
		PreparedStatement s = con.prepareStatement("select * from busdetails where source=? and destination=? and date=?");
		s.setString(1, source);
		s.setString(2, destination);
		s.setString(3, date);
		
		System.out.println(s);
		
		ResultSet rs = s.executeQuery();
		
		while(rs.next()) {
			BusDetails b = new BusDetails();
			b.setBusId(rs.getInt("bus_id"));
			b.setSource(rs.getString("source"));
			b.setDestination(rs.getString("destination"));
			b.setDate(rs.getString("date"));
			b.setTime(rs.getString("time"));
			b.setAvailableSeats(rs.getInt("available_seats"));
			b.setBookedSeats(rs.getInt("booked_seats"));
			b.setAmount(rs.getInt("amount"));
			
			list.add(b);
		}
		s.close();
		}catch ( SQLException | ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int UpdateBookedSeats(int busId, int bookedSeats,int availableSeats) {
		int i=0;
		
		try {
			Connection con = myConn.getConn();
			PreparedStatement s = con.prepareStatement("update busdetails set booked_seats=?,available_seats=? where bus_id=?");
			s.setInt(1, bookedSeats);
			s.setInt(2, availableSeats);
			s.setInt(3,busId);
			i = s.executeUpdate();
			
			s.close();
			}catch ( SQLException | ClassNotFoundException e) {
				
				e.printStackTrace();
			}
		return i;
	}


}
