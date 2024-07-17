package com.test.domain;

import java.sql.Timestamp;
import java.util.Objects;

public class Board {
    private int bno;
    private String title;
    private String content;
    private String writer;
    private int view_cnt;
    private int comment_cnt;
    private Timestamp reg_date;

    public Board(){}
    public Board(String title, String content, String writer){
        this.title = title;
        this.content = content;
        this.writer = writer;
    }

    public Board(String title, String content, String writer, int view_cnt, int comment_cnt, Timestamp reg_date) {
        this.title = title;
        this.content = content;
        this.writer = writer;
        this.view_cnt = view_cnt;
        this.comment_cnt = comment_cnt;
        this.reg_date = reg_date;
    }

    public Board(int bno, String title, String content, String writer, int view_cnt, int comment_cnt, Timestamp reg_date) {
        this.bno = bno;
        this.title = title;
        this.content = content;
        this.writer = writer;
        this.view_cnt = view_cnt;
        this.comment_cnt = comment_cnt;
        this.reg_date = reg_date;
    }

    public int getBno() {
        return bno;
    }

    public void setBno(int bno) {
        this.bno = bno;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public int getView_cnt() {
        return view_cnt;
    }

    public void setView_cnt(int view_cnt) {
        this.view_cnt = view_cnt;
    }

    public int getComment_cnt() {
        return comment_cnt;
    }

    public void setComment_cnt(int comment_cnt) {
        this.comment_cnt = comment_cnt;
    }

    public Timestamp getReg_date() {
        return reg_date;
    }

    public void setReg_date(Timestamp reg_date) {
        this.reg_date = reg_date;
    }

    @Override
    public String toString() {
        return "Board{" +
                "bno=" + bno +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", writer='" + writer + '\'' +
                ", view_cnt=" + view_cnt +
                ", comment_cnt=" + comment_cnt +
                ", reg_date=" + reg_date +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Board board = (Board) o;
        return bno == board.bno && view_cnt == board.view_cnt && comment_cnt == board.comment_cnt && Objects.equals(title, board.title) && Objects.equals(content, board.content) && Objects.equals(writer, board.writer) && Objects.equals(reg_date, board.reg_date);
    }

    @Override
    public int hashCode() {
        return Objects.hash(bno, title, content, writer, view_cnt, comment_cnt, reg_date);
    }
}
