package point;

public class PointVO {
private String dicId;
private String pointHisnum;
private String recnumNum;
private int pointScore;
private String pointHis;



public PointVO(String dicId, String pointHisnum, String recnumNum, int pointScore, String pointHis) {
	super();
	this.dicId = dicId;
	this.pointHisnum = pointHisnum;
	this.recnumNum = recnumNum;
	this.pointScore = pointScore;
	this.pointHis = pointHis;
}

public String getDicId() {
	return dicId;
}
public void setDicId(String dicId) {
	this.dicId = dicId;
}
public String getPointHisnum() {
	return pointHisnum;
}
public void setPointHisnum(String pointHisnum) {
	this.pointHisnum = pointHisnum;
}
public String getRecnumNum() {
	return recnumNum;
}
public void setRecnumNum(String recnumNum) {
	this.recnumNum = recnumNum;
}
public int getPointScore() {
	return pointScore;
}
public void setPointScore(int pointScore) {
	this.pointScore = pointScore;
}
public String getPointHis() {
	return pointHis;
}
public void setPointHis(String pointHis) {
	this.pointHis = pointHis;
}
@Override
public String toString() {
	return "PointVO [dicId=" + dicId + ", pointHisnum=" + pointHisnum + ", recnumNum=" + recnumNum + ", pointScore="
			+ pointScore + ", pointHis=" + pointHis + "]";
}


}
