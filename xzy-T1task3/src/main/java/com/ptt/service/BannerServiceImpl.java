package com.ptt.service;

import com.ptt.dao.BannerMapper;
import com.ptt.pojo.Banner;

import java.util.List;

public class BannerServiceImpl implements BannerService {

    private BannerMapper bannerMapper;

    public void setBannerMapper(BannerMapper bannerMapper) {
        this.bannerMapper = bannerMapper;
    }

    @Override
    public Integer addBanner(Banner banner) {
        bannerMapper.addBanner(banner);
        return banner.getId();
    }

    @Override
    public Integer deleteBannerById(Integer id) {
        return bannerMapper.deleteBannerById(id);
    }

    @Override
    public boolean updateBanner(Banner banner) {
        return bannerMapper.updateBanner(banner);
    }

    @Override
    public Banner getBannerById(Integer id) {
        return bannerMapper.getBannerById(id);
    }

    @Override
    public List<Banner> queryAllBanner() {
        return bannerMapper.queryAllBanner();
    }
}
