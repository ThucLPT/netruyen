
public class Chap {

	private String url;
	private String num_chap;
	
	public Chap(String url) {
		this.url = url;
		num_chap = chapNumber(url);
	}
	
	public String getUrl() {
		return url;
	}
	
	public String getNum_chap() {
		return num_chap;
	}

	private String chapNumber(String url){
        int idx = url.indexOf("chap-");
        String numChap = url.substring(idx + 5, url.length());
        return numChap;
    }
}
