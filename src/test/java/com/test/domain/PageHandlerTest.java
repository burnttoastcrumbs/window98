//package com.test.domain;
//
//import org.junit.Test;
//
//import static org.junit.Assert.*;
//
//public class PageHandlerTest {
//    @Test
//    public void test(){
//        PageHandler ph = new PageHandler(250,1);
//        assertTrue(ph.getNaviStart() ==1);
//        assertTrue(ph.getNaviEnd() ==10);
//    }
//
//    @Test
//    public void test2(){
//        PageHandler ph = new PageHandler(250,11);
//        assertTrue(ph.getNaviStart()==11);
//        assertTrue(ph.getNaviEnd()==20);
//    }
//
//    @Test
//    public void test3(){
//        PageHandler ph = new PageHandler(255,25);
//        System.out.println(ph);
//        assertTrue(ph.getNaviStart()==21);
//        assertTrue(ph.getNaviEnd()==26);
//    }
//
//    @Test
//    public void test4(){
//        PageHandler ph = new PageHandler(12,2);
//        System.out.println(ph);
//        assertTrue(ph.getNaviStart()==1);
//        assertTrue(ph.getNaviEnd()==2);
//    }
//
//    @Test
//    public void test5(){
//        PageHandler ph = new PageHandler(250,19);
//        assertTrue(ph.getNaviStart()==11);
//        assertTrue(ph.getNaviEnd()==20);
//        ph.page();
//    }
//
//}