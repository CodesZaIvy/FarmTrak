

public class SeleniumTest {
    public static void main(String[] args) {
        // Set the path to the ChromeDriver executable
        System.setProperty("webdriver.chrome.driver", "/usr/local/bin/chromedriver");

        // Create a new instance of the Chrome driver
        ChromeDriver driver = new ChromeDriver();

        try {
            // Navigate to a website
            driver.get("https://www.google.com");

            // Print the title of the page
            System.out.println("Title: " + driver.getTitle());
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close the browser
            driver.quit();
        }
    }
}
