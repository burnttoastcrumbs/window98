package com.test.domain;

import org.springframework.web.util.UriComponentsBuilder;

public class SearchCondition {
    private Integer curPage =1;
    private Integer pageSize =10;
//    private Integer offset =0;
    private String keyword ="";
    private String option ="";

    public SearchCondition(){}
    public SearchCondition(Integer curPage, Integer pageSize, String keyword, String option) {
        this.curPage = curPage;
        this.pageSize = pageSize;
        this.keyword = keyword;
        this.option = option;
    }

    public String getQueryString() {
        return getQueryString(curPage);
    }

    public String getQueryString(Integer curPage) {
        // ?page=10&pageSize=10&option=A&keyword=title
        return UriComponentsBuilder.newInstance()
                .queryParam("curPage",     curPage)
                .queryParam("pageSize", pageSize)
                .queryParam("option",   option)
                .queryParam("keyword",  keyword)
                .build().toString();
    }

    public Integer getCurPage() {
        return curPage;
    }

    public void setCurPage(Integer curPage) {
        this.curPage = curPage;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getOffset() {
        return (curPage-1)*pageSize;
    }


    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getOption() {
        return option;
    }

    public void setOption(String option) {
        this.option = option;
    }

    @Override
    public String toString() {
        return "SearchCondition{" +
                "curPage=" + curPage +
                ", pageSize=" + pageSize +
                ", offset=" + getOffset() +
                ", keyword='" + keyword + '\'' +
                ", option='" + option + '\'' +
                '}';
    }
}
