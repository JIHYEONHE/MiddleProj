package rec;

public class RecVO {
private String dicId;
private int infoboNum;
private String recDate;



public RecVO(String dicId, int infoboNum, String recDate) {
	super();
	this.dicId = dicId;
	this.infoboNum = infoboNum;
	this.recDate = recDate;
}

public String getDicId() {
	return dicId;
}
public void setDicId(String dicId) {
	this.dicId = dicId;
}
public int getInfoboNum() {
	return infoboNum;
}
public void setInfoboNum(int infoboNum) {
	this.infoboNum = infoboNum;
}
public String getRecDate() {
	return recDate;
}
public void setRecDate(String recDate) {
	this.recDate = recDate;
}
@Override
public String toString() {
	return "RecVO [dicId=" + dicId + ", infoboNum=" + infoboNum + ", recDate=" + recDate + "]";
}


}
