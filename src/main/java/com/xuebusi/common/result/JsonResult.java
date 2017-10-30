package com.xuebusi.common.result;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.xuebusi.common.utils.RequestUtils;

/**
 * JSON返回值
 * Created by SYJ on 2017/5/19.
 */
public class JsonResult {

    public String Json(int code, String message, Object data) {
       return Json(code,message,data,true);
    }

    public String Json(int code, String message, Object data,boolean isNull) {
        ResultModel result = new ResultModel();
        result.setCode(code);
        result.setMessage(message);
        result.setData(data);
        if(isNull)
            return JSON.toJSONString(result, SerializerFeature.WriteMapNullValue);
        else
            return JSON.toJSONString(result);
    }

    public String Json(Object result){
        Class<?> objClass = result.getClass();
        if(objClass == ResultModel.class){
            ResultModel<Object> resultModel = (ResultModel<Object>)result;
            if(resultModel!=null){
                resultModel.setTaskId(RequestUtils.getRequestId());
            }
            return JSON.toJSONString(resultModel, SerializerFeature.WriteMapNullValue);
        }
        return JSON.toJSONString(result, SerializerFeature.WriteMapNullValue);
    }

    public String Json(int code, String message) {
        return Json(code, message, null);
    }

    public String Json(ViewHint hint){
        return Json(hint.getCode(), hint.getMessage());
    }

    public String Json(ViewHint hint, Object object){
        return Json(hint.getCode(), hint.getMessage(), object);
    }

    public String JsonSuccess(Object data) {
        return Json(ViewHint.Success.getCode(), "", data);
    }

    public String JsonSuccess() {
        return Json(ViewHint.Success.getCode(), "", null);
    }

    public String JsonFail(){
        return Json(ViewHint.Fail.getCode(), ViewHint.Fail.getMessage(), null);
    }

    public String JsonFail(String message){
        return Json(ViewHint.Fail.getCode(), message, null);
    }
}
