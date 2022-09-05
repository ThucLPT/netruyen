import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class Crawler {
	
	/*
	 * Đổi trang thì phải sửa lại NAME_COMIC, numChap trong class Chap, Thumbmail, getChap, getImage.
	 * Đổi truyện thì sửa URL
	 * */
	
	
	
	private static String URL = "http://www.truyentranhtop.com/em-co-the-giu-bi-mat-giup-anh";
	private static String NAME_COMIC = URL.substring(URL.indexOf("top.com") + 8, URL.length());
	static Scanner scan = new Scanner(System.in);
	
	public static List<Chap> getAllChap(String url, ChromeOptions options) {
		List<Chap> chaps = new ArrayList<Chap>();
		WebDriver driver = new ChromeDriver(options);
		driver.get(url);
		List<WebElement> elements = driver.findElements(By.className("list-group-item"));
		for (WebElement e : elements) {
			String urlChap = e.getAttribute("href");
			Chap chap = new Chap(urlChap);
			System.out.println(urlChap);
			chaps.add(chap);
		}
		driver.close();
		return chaps;
	}
	
	public static void fileWriteThumbnail(ChromeOptions options) {
		WebDriver driver = new ChromeDriver(options);
		driver.get(URL);
		WebElement element = driver.findElement(By.className("rounded"));
		String thumbnail = element.getAttribute("src");
		File theDir = new File("ComicProject\\" + NAME_COMIC);
		if (!theDir.exists()){
		    theDir.mkdirs();
		}
		try {
			FileWriter fw = new FileWriter("ComicProject\\" + NAME_COMIC + "\\" + "thumbnail" + ".txt", true);
			BufferedWriter buffer = new BufferedWriter(fw);
			buffer.write(thumbnail);
			buffer.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void getAllImage(String url, String numChap, ChromeOptions options) {
		WebDriver driver = new ChromeDriver(options);
		driver.get(url);
		System.out.println(url);
		List<WebElement> elements_1 = driver.findElements(By.cssSelector("img[style=\"min-height:200px;\"]"));
		List<WebElement> elements_2 = driver.findElements(By.className("chaplazy"));
		System.out.println(elements_1.size() + elements_2.size());
		for (WebElement e : elements_1) {
			String urlImage = e.getAttribute("src");
			fileWriteUrl(urlImage, numChap);
		}
		for (WebElement e : elements_2) {
			String urlImage = e.getAttribute("src");
		}
		driver.close();
	}
	
	public static void fileWriteUrl(String url, String numChap) {
		File theDir = new File("ComicProject\\" + NAME_COMIC);
		if (!theDir.exists()){
		    theDir.mkdirs();
		}
		try {
			FileWriter fw = new FileWriter("ComicProject\\" + NAME_COMIC + "\\" + NAME_COMIC + "_Chap" + numChap + ".txt", true);
			BufferedWriter buffer = new BufferedWriter(fw);
			buffer.write(url);
			buffer.newLine();
			buffer.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		System.setProperty("webdriver.chrome.driver", "chromedriver.exe");
		ChromeOptions options = new ChromeOptions();
		options.addArguments("--headless");
		fileWriteThumbnail(options);
		List<Chap> chaps = getAllChap(URL, options);
		for (Chap chap : chaps) {
			getAllImage(chap.getUrl(), chap.getNum_chap(), options);
		}
	}
}
