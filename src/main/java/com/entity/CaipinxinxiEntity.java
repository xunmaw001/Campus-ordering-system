package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 菜品信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-03-24 11:57:41
 */
@TableName("caipinxinxi")
public class CaipinxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public CaipinxinxiEntity() {
		
	}
	
	public CaipinxinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 商家编号
	 */
					
	private String shangjiabianhao;
	
	/**
	 * 商家名
	 */
					
	private String shangjiaming;
	
	/**
	 * 菜系
	 */
					
	private String caixi;
	
	/**
	 * 美食名称
	 */
					
	private String meishimingcheng;
	
	/**
	 * 图片
	 */
					
	private String tupian;
	
	/**
	 * 单价
	 */
					
	private Integer danjia;
	
	/**
	 * 主料
	 */
					
	private String zhuliao;
	
	/**
	 * 份量
	 */
					
	private Integer fenliang;
	
	/**
	 * 美食介绍
	 */
					
	private String meishijieshao;
	
	/**
	 * 赞
	 */
					
	private Integer thumbsupnum;
	
	/**
	 * 踩
	 */
					
	private Integer crazilynum;
	
	/**
	 * 最近点击时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date clicktime;
	
	/**
	 * 点击次数
	 */
					
	private Integer clicknum;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：商家编号
	 */
	public void setShangjiabianhao(String shangjiabianhao) {
		this.shangjiabianhao = shangjiabianhao;
	}
	/**
	 * 获取：商家编号
	 */
	public String getShangjiabianhao() {
		return shangjiabianhao;
	}
	/**
	 * 设置：商家名
	 */
	public void setShangjiaming(String shangjiaming) {
		this.shangjiaming = shangjiaming;
	}
	/**
	 * 获取：商家名
	 */
	public String getShangjiaming() {
		return shangjiaming;
	}
	/**
	 * 设置：菜系
	 */
	public void setCaixi(String caixi) {
		this.caixi = caixi;
	}
	/**
	 * 获取：菜系
	 */
	public String getCaixi() {
		return caixi;
	}
	/**
	 * 设置：美食名称
	 */
	public void setMeishimingcheng(String meishimingcheng) {
		this.meishimingcheng = meishimingcheng;
	}
	/**
	 * 获取：美食名称
	 */
	public String getMeishimingcheng() {
		return meishimingcheng;
	}
	/**
	 * 设置：图片
	 */
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
	/**
	 * 设置：单价
	 */
	public void setDanjia(Integer danjia) {
		this.danjia = danjia;
	}
	/**
	 * 获取：单价
	 */
	public Integer getDanjia() {
		return danjia;
	}
	/**
	 * 设置：主料
	 */
	public void setZhuliao(String zhuliao) {
		this.zhuliao = zhuliao;
	}
	/**
	 * 获取：主料
	 */
	public String getZhuliao() {
		return zhuliao;
	}
	/**
	 * 设置：份量
	 */
	public void setFenliang(Integer fenliang) {
		this.fenliang = fenliang;
	}
	/**
	 * 获取：份量
	 */
	public Integer getFenliang() {
		return fenliang;
	}
	/**
	 * 设置：美食介绍
	 */
	public void setMeishijieshao(String meishijieshao) {
		this.meishijieshao = meishijieshao;
	}
	/**
	 * 获取：美食介绍
	 */
	public String getMeishijieshao() {
		return meishijieshao;
	}
	/**
	 * 设置：赞
	 */
	public void setThumbsupnum(Integer thumbsupnum) {
		this.thumbsupnum = thumbsupnum;
	}
	/**
	 * 获取：赞
	 */
	public Integer getThumbsupnum() {
		return thumbsupnum;
	}
	/**
	 * 设置：踩
	 */
	public void setCrazilynum(Integer crazilynum) {
		this.crazilynum = crazilynum;
	}
	/**
	 * 获取：踩
	 */
	public Integer getCrazilynum() {
		return crazilynum;
	}
	/**
	 * 设置：最近点击时间
	 */
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
	/**
	 * 设置：点击次数
	 */
	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}
	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}

}
