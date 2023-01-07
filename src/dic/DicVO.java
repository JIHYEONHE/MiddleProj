package dic;

import java.util.Date;

public class DicVO {

	private String dicId;

	private String dicPw;
	private String dicName;
	private String dicBir;
	private String dicAddr;
	private String dicAddr2;
	private String dicPh;
	private String dicPwre;
	private String dicMail;
	private String dicJoindt;
	private String dicNic;
	private String mastId;
	private String dicmodifyreps;
	
	public DicVO() {
		super();
	}


	public DicVO(String dicId, String dicPw, String dicName, String dicBir, String dicAddr, String dicAddr2,
			String dicPh, String dicPwre, String dicMail, String dicJoindt, String dicNic, String mastId,
			String dicmodifyreps) {
		super();
		this.dicId = dicId;
		this.dicPw = dicPw;
		this.dicName = dicName;
		this.dicBir = dicBir;
		this.dicAddr = dicAddr;
		this.dicAddr2 = dicAddr2;
		this.dicPh = dicPh;
		this.dicPwre = dicPwre;
		this.dicMail = dicMail;
		this.dicJoindt = dicJoindt;
		this.dicNic = dicNic;
		this.mastId = mastId;
		this.dicmodifyreps = dicmodifyreps;
	}

	

	public String getDicmodifyreps() {
		return dicmodifyreps;
	}


	public void setDicmodifyreps(String dicmodifyreps) {
		this.dicmodifyreps = dicmodifyreps;
	}


	public String getDicId() {
		return dicId;
	}

	public void setDicId(String dicId) {
		this.dicId = dicId;
	}

	public String getDicPw() {
		return dicPw;
	}

	public void setDicPw(String dicPw) {
		this.dicPw = dicPw;
	}

	public String getDicName() {
		return dicName;
	}

	public void setDicName(String dicName) {
		this.dicName = dicName;
	}

	public String getDicBir() {
		return dicBir;
	}

	public void setDicBir(String dicBir) {
		this.dicBir = dicBir;
	}

	public String getDicAddr() {
		return dicAddr;
	}

	public void setDicAddr(String dicAddr) {
		this.dicAddr = dicAddr;
	}

	public String getDicAddr2() {
		return dicAddr2;
	}

	public void setDicAddr2(String dicAddr2) {
		this.dicAddr2 = dicAddr2;
	}

	public String getDicPh() {
		return dicPh;
	}

	public void setDicPh(String dicPh) {
		this.dicPh = dicPh;
	}

	public String getDicPwre() {
		return dicPwre;
	}

	public void setDicPwre(String dicPwre) {
		this.dicPwre = dicPwre;
	}

	public String getDicMail() {
		return dicMail;
	}

	public void setDicMail(String dicMail) {
		this.dicMail = dicMail;
	}

	public String getDicJoindt() {
		return dicJoindt;
	}

	public void setDicJoindt(String dicJoindt) {
		this.dicJoindt = dicJoindt;
	}

	public String getDicNic() {
		return dicNic;
	}

	public void setDicNic(String dicNic) {
		this.dicNic = dicNic;
	}

	public String getMastId() {
		return mastId;
	}

	public void setMastId(String mastId) {
		this.mastId = mastId;
	}

	@Override
	public String toString() {
		return "DicVO [dicId=" + dicId + ", dicPw=" + dicPw + ", dicName=" + dicName + ", dicBir=" + dicBir
				+ ", dicAddr=" + dicAddr + ", dicAddr2=" + dicAddr2 + ", dicPh=" + dicPh + ", dicPwre=" + dicPwre
				+ ", dicMail=" + dicMail + ", dicJoindt=" + dicJoindt + ", dicNic=" + dicNic + ", mastId=" + mastId
				+ "]";
	}

}
