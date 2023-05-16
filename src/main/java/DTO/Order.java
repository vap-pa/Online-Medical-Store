package DTO;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class Order {
 private String Medicine;
 private String Price;
 private String uid;
 String timeStamp = new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss").format(Calendar.getInstance().getTime());

 private String date =timeStamp;

 public String getUid() {
	return uid;
}
public void setUid(String uid) {
	this.uid = uid;
}
public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
public String getMedicine() {
	return Medicine;
}
public void setMedicine(String medicine) {
	Medicine = medicine;
}
public String getPrice() {
	return Price;
}
public void setPrice(String price) {
	Price = price;
}


}
