package com.sccc;

import java.util.ArrayList;
import java.util.HashMap;

public class Status {
 private ArrayList<String>zhuangTai;
 private HashMap<String,ArrayList<String>>tiMu;
	public Status() {
		//��ʼ��ֵ
		zhuangTai=new ArrayList<String>();
		     tiMu= new HashMap<String, ArrayList<String>>();
		     //������
		     String qingkuang="û�нӵ�Ů���ѵĵ绰";
		     zhuangTai.add(qingkuang);
		     //ѡ�����
		     String xuanxiang1="���ֻ�������";
		     String xuanxiang2="���ڴ���Ϸ";
		     String xuanxiang3="���ڸ�������";
		     String xuanxiang4="���ڹ���";
		     ArrayList<String> temp = new ArrayList<String>();
		     //�����м����
		     temp.add(xuanxiang1);
		     temp.add(xuanxiang2);
		     temp.add(xuanxiang3);
		     temp.add(xuanxiang4);
		     //�������ѡ�����hash��
		     tiMu.put(qingkuang, temp);
	}
	public  ArrayList<String> getzhuangTai(){
		return zhuangTai;
	}
	public void setzhuangTai(ArrayList<String>zhuangTai){
		this.zhuangTai = zhuangTai;
	}
	public HashMap<String,ArrayList<String>>getTiMu(){
		     return tiMu;
	}

}
