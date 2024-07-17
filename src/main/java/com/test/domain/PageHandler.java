package com.test.domain;

import org.springframework.web.util.UriComponentsBuilder;

public class PageHandler {

//    private int curPage; //현재 페이지
//    private int pageSize = 10; //한 페이지의 크기
//    private String option;
//    private String keyword;
    private SearchCondition sc;
    private int totalCnt; //전체 게시물의 개수
    private int pageCnt; //전체 페이지의 개수

    private int naviSize = 10; //navi 한 페이지의 크기
    private int naviStart=1;//navi의 시작 페이지
    private int naviEnd;//navi의 끝 페이지
    private boolean showPrev=false; //이전페이지로 이동하는 링크를 보여줄 것인지의 대한 여부
    private boolean showNext=false; //다음페이지로 이동하는 링크를 보여줄 것인지의 대한 여부

//    public PageHandler(int totalCnt, SearchCondition sc){
//        this.totalCnt = totalCnt;
//        this.sc = sc;
//    }

//    public PageHandler(int totalCnt, int curPage){
//        this(totalCnt,curPage,10);
//    }

    public PageHandler(int totalCnt, SearchCondition sc) {
    this.totalCnt = totalCnt;
    this.sc = sc;

    doPaging(totalCnt, sc);
}

    public void doPaging(int totalCnt, SearchCondition sc){
        this.totalCnt = totalCnt;

        //계산
        pageCnt = totalCnt/sc.getPageSize() + (totalCnt%sc.getPageSize() == 0 ? 0 : 1);
        naviStart = (sc.getCurPage()-1)/naviSize*naviSize+1 ;
        naviEnd = (naviStart + naviSize - 1);
        naviEnd = naviEnd > pageCnt ? pageCnt : naviEnd;
        showPrev = naviStart !=1;
        showNext = naviEnd !=pageCnt;
    }



    void page(){
        System.out.println("curPage(현재 페이지 )" + sc.getCurPage());
        System.out.println(showPrev ? "[PREV] " : "");

        for (int i=naviStart; i<=naviEnd; i++){
            System.out.println(i + "");
        }

        System.out.println(showNext ? "[NEXT] " : "");
    }


    @Override
    public String toString() {
        return "PageHandler{" +
                "sc=" + sc +
                ", totalCnt=" + totalCnt +
                ", pageCnt=" + pageCnt +
                ", naviSize=" + naviSize +
                ", naviStart=" + naviStart +
                ", naviEnd=" + naviEnd +
                ", showPrev=" + showPrev +
                ", showNext=" + showNext +
                '}';
    }

    public int getTotalCnt() {
        return totalCnt;
    }

    public void setTotalCnt(int totalCnt) {
        this.totalCnt = totalCnt;
    }

//    public int getPageSize() {
//        return pageSize;
//    }
//
//    public void setPageSize(int pageSize) {
//        this.pageSize = pageSize;
//    }

    public int getPageCnt() {
        return pageCnt;
    }

    public void setPageCnt(int pageCnt) {
        this.pageCnt = pageCnt;
    }

    public int getNaviSize() {
        return naviSize;
    }

    public void setNaviSize(int naviSize) {
        this.naviSize = naviSize;
    }

    public int getNaviStart() {
        return naviStart;
    }

    public void setNaviStart(int naviStart) {
        this.naviStart = naviStart;
    }

    public int getNaviEnd() {
        return naviEnd;
    }

    public void setNaviEnd(int naviEnd) {
        this.naviEnd = naviEnd;
    }



    public boolean isShowPrev() {
        return showPrev;
    }

    public void setShowPrev(boolean showPrev) {
        this.showPrev = showPrev;
    }

    public boolean isShowNext() {
        return showNext;
    }

    public void setShowNext(boolean showNext) {
        this.showNext = showNext;
    }

    public SearchCondition getSc() {
        return sc;
    }

    public void setSc(SearchCondition sc) {
        this.sc = sc;
    }
}
