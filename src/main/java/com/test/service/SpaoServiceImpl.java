package com.test.service;

import com.test.dao.SpaoDao;
import com.test.domain.Spao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SpaoServiceImpl implements SpaoService{
    @Autowired
    SpaoDao spaoDao;
    @Override
    public List<Spao> womanTap() throws Exception {
         return spaoDao.womanTap();
    }
    @Override
    public List<Spao> manTap() throws Exception {
        return spaoDao.manTap();
    }
    @Override
    public List<Spao> uniTap() throws Exception {
        return spaoDao.uniTap();
    }
}
