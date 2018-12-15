package com.welcomemyhome.project.Service;

import java.io.File;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.apache.commons.codec.binary.Base64;

import com.welcomemyhome.project.DAO.MagazineDAO;
import com.welcomemyhome.project.VO.MagazineVO;

@Service
public class MagazineServiceImpl implements MagazineService {

	@Inject
	private MagazineDAO dao;

	@Override
	public List<MagazineVO> selectMagazine(int offset) throws Exception {
		List<MagazineVO> magazineList = dao.selectMagazine(offset);

		System.out.println(magazineList.get(0).getMagazine_thumbnail_path());
		File f = new File(magazineList.get(0).getMagazine_thumbnail_path());
		byte[] content = new byte[(int) f.length()];
		System.out.println("인코딩 text : " + new String(content) + f.length());

		/* base64 encoding */
		byte[] encodedBytes = Base64.encodeBase64(content);
		/* base64 decoding */
		byte[] decodedBytes = Base64.decodeBase64(encodedBytes);

		System.out.println("인코딩 text : " + new String(encodedBytes));
		System.out.println("디코딩 text : " + new String(decodedBytes));

		return dao.selectMagazine(offset);
	}
}