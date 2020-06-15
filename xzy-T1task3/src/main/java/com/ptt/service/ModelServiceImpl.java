package com.ptt.service;

import com.ptt.dao.ModelMapper;
import com.ptt.pojo.Model;
import com.ptt.pojo.Role;

import java.util.List;

public class ModelServiceImpl implements ModelService{

    private ModelMapper modelMapper;

    public void setModelMapper(ModelMapper modelMapper) {
        this.modelMapper = modelMapper;
    }

    @Override
    public Integer addModel(Model model) {
        modelMapper.addModel(model);
        return model.getId();
    }

    @Override
    public Integer deleteModelById(Integer id) {
        return modelMapper.deleteModelById(id);
    }

    @Override
    public boolean updateModel(Model model) {
        return modelMapper.updateModel(model);
    }

    @Override
    public Model getModelById(Integer id) {
        return modelMapper.getModelById(id);
    }

    @Override
    public List<Model> queryAllModel() {
        return modelMapper.queryAllModel();
    }

}
