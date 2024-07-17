package com.test.dao;

import com.test.domain.Spao;

import java.util.List;

public interface SpaoDao {
    List<Spao> womanTap() throws Exception;
    List<Spao> manTap() throws Exception;
    List<Spao> uniTap() throws Exception;

}
