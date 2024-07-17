package com.test.domain;

public class Spao {
    private String num;
    private String name;
    private int price;
    private int disc_price;
    private String main_img;
    private int review_cnt;
    private int like_cnt;
    private double review_rate;
    private String col;
    private String type;
    private int rankk;

    public Spao(){}

    public Spao(String num, String name, int price, int disc_price, String main_img, int review_cnt, int like_cnt, double review_rate, String col, String type, int rankk) {
        this.num = num;
        this.name = name;
        this.price = price;
        this.disc_price = disc_price;
        this.main_img = main_img;
        this.review_cnt = review_cnt;
        this.like_cnt = like_cnt;
        this.review_rate = review_rate;
        this.col = col;
        this.type = type;
        this.rankk = rankk;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getDisc_price() {
        return disc_price;
    }

    public void setDisc_price(int disc_price) {
        this.disc_price = disc_price;
    }

    public String getMain_img() {
        return main_img;
    }

    public void setMain_img(String main_img) {
        this.main_img = main_img;
    }

    public int getReview_cnt() {
        return review_cnt;
    }

    public void setReview_cnt(int review_cnt) {
        this.review_cnt = review_cnt;
    }

    public int getLike_cnt() {
        return like_cnt;
    }

    public void setLike_cnt(int like_cnt) {
        this.like_cnt = like_cnt;
    }

    public double getReview_rate() {
        return review_rate;
    }

    public void setReview_rate(double review_rate) {
        this.review_rate = review_rate;
    }

    public String getCol() {
        return col;
    }

    public void setCol(String col) {
        this.col = col;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getRankk() {
        return rankk;
    }

    public void setRankk(int rankk) {
        this.rankk = rankk;
    }

    @Override
    public String toString() {
        return "Spao{" +
                "num='" + num + '\'' +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", disc_price=" + disc_price +
                ", main_img='" + main_img + '\'' +
                ", review_cnt=" + review_cnt +
                ", like_cnt=" + like_cnt +
                ", review_rate=" + review_rate +
                ", col='" + col + '\'' +
                ", type='" + type + '\'' +
                ", rankk=" + rankk +
                '}';
    }
}
