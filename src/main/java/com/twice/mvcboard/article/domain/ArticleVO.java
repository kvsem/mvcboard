package com.twice.mvcboard.article.domain;

import java.util.Date;

public class ArticleVO {

    private Integer id;

    private String title;

    private String context;

    private Integer user_id;

    private Date write_date;

    // getter, setter, toString() 생략


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Date getWrite_date() {
        return write_date;
    }

    public void setWrite_date(Date write_date) {
        this.write_date = write_date;
    }

    @Override
    public String toString() {
        return "ArticleVO{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", context='" + context + '\'' +
                ", user_id='" + user_id + '\'' +
                ", write_date=" + write_date +
                '}';
    }
}
