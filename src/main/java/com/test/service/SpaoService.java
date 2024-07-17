package com.test.service;

import com.test.domain.Spao;

import java.util.List;

public interface SpaoService {
    List<Spao> womanTap() throws Exception;
    List<Spao> manTap() throws Exception;
    List<Spao> uniTap() throws Exception;
}
