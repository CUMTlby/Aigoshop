package org.fkit.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * CREATE TABLE tb_book (
	id INT (11) PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR (54),
	author VARCHAR (54),
	publicationdate DATE ,
	publication VARCHAR (150),
	price DOUBLE ,
	image VARCHAR (54),
	remark VARCHAR (600)
);
 * */
public class Book implements Serializable{
	
	/**
	 * 
	 */
	
	private Integer id;				// id	
	private String name;			// 书名
	private String author;			// 作者
	private String type;	
	private String publication;		// 出版社
	private Date publicationdate;	// 出版日期
	private Double price;			// 价格
	private String image;			// 封面图片
	private String fimage;
	private String simage;
	private int count;
	
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getPublication() {
		return publication;
	}
	public void setPublication(String publication) {
		this.publication = publication;
	}
	public Date getPublicationdate() {
		return publicationdate;
	}
	public void setPublicationdate(Date publicationdate) {
		this.publicationdate = publicationdate;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getFimage() {
		return fimage;
	}
	public void setImagef(String fimage) {
		this.fimage = fimage;
	}
	public String getSimage() {
		return simage;
	}
	public void setSimage(String simage) {
		this.simage = simage;
	}
	public String getCount() {
		return simage;
	}
	public void setCount(int count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "Book [id=" + id + ", name=" + name + ", author=" + author
				+ ", type=" + type + ",publication=" + publication + ", publicationdate="
				+ publicationdate + ", price=" + price + ", image=" + image
				+  ", fimage=" + fimage +", simage=" + simage + ",count=" + count + "]";
	}
	

}
