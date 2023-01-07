package refund;

public class RefundVO {
private int refundNum;
private String refundAccnum;
private String refundBank;
private int refundMoney;
private int refundNm;
private String dicId;
private String mastId;



public RefundVO(int refundNum, String refundAccnum, String refundBank, int refundMoney, int refundNm, String dicId,
		String mastId) {
	super();
	this.refundNum = refundNum;
	this.refundAccnum = refundAccnum;
	this.refundBank = refundBank;
	this.refundMoney = refundMoney;
	this.refundNm = refundNm;
	this.dicId = dicId;
	this.mastId = mastId;
}

public int getRefundNum() {
	return refundNum;
}
public void setRefundNum(int refundNum) {
	this.refundNum = refundNum;
}
public String getRefundAccnum() {
	return refundAccnum;
}
public void setRefundAccnum(String refundAccnum) {
	this.refundAccnum = refundAccnum;
}
public String getRefundBank() {
	return refundBank;
}
public void setRefundBank(String refundBank) {
	this.refundBank = refundBank;
}
public int getRefundMoney() {
	return refundMoney;
}
public void setRefundMoney(int refundMoney) {
	this.refundMoney = refundMoney;
}
public int getRefundNm() {
	return refundNm;
}
public void setRefundNm(int refundNm) {
	this.refundNm = refundNm;
}
public String getDicId() {
	return dicId;
}
public void setDicId(String dicId) {
	this.dicId = dicId;
}
public String getMastId() {
	return mastId;
}
public void setMastId(String mastId) {
	this.mastId = mastId;
}
@Override
public String toString() {
	return "RefundVO [refundNum=" + refundNum + ", refundAccnum=" + refundAccnum + ", refundBank=" + refundBank
			+ ", refundMoney=" + refundMoney + ", refundNm=" + refundNm + ", dicId=" + dicId + ", mastId=" + mastId
			+ "]";
}




}
