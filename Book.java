public class Book{
	protected String title;
	protected String author;
	public Book(String title, String author) {
		this.title = title;
		this.author = author;}	
    public String getTitle() {
    return title;}
    public String getAuthor() {
    	return author;}
    	public String toString() {
    		return "The Title: " + title + ", Author: " + author;
    		}
    		}