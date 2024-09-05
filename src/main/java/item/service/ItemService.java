package item.service;

import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.Part;

import comm.dao.AtchFileDao;
import item.dao.ItemDao;
import kr.or.ddit.vo.AtchFileDetailVO;
import kr.or.ddit.vo.CategoryVO;
import kr.or.ddit.vo.ItemVO;
import kr.or.ddit.vo.SearchVO;

public class ItemService {
	private static ItemService itemService = new ItemService();

	private ItemDao itemDao;
	private AtchFileDao fileDao;

	public ItemService() {
		itemDao = ItemDao.getInstance();
		fileDao = AtchFileDao.getInstance();
	}

	public static ItemService getInstance() {
		return itemService;
	}

	public List<CategoryVO> getAllCategory() {
		return itemDao.getAllCategory();
	}
	
	public ItemVO getItemInfo(String itemId) {
		return itemDao.getItemInfo(itemId);
	}
	
	public int deleteItem(String itemId) {
		return itemDao.deleteItem(itemId);
	}
	
	public String getSubImg(String itemId){
		return itemDao.getSubImg(itemId);
	}
	
	public List<SearchVO> getSearchResult(String searchWord){
		return itemDao.getSearchResult(searchWord);
	}

	public List<ItemVO> getBestItemList(String cateId) {
		return itemDao.getCategoryItemList(cateId);
	}
	
	public int insertItem(ItemVO iv) {
		return itemDao.insertItem(iv);
	}
	
	public List<String> getItemMakeFilter(String cateId){
		return itemDao.getItemMakeFilter(cateId);
	}
	
	public List<String> getItemAttrFilter(String cateId){
		return itemDao.getItemAttrFilter(cateId);
	}
	
	public List<String> getComNameFilter(String cateId){
		return itemDao.getComNameFilter(cateId);
	}
	
	public String getMaxItemId(){
		return itemDao.getMaxItemId();
	}
	
	public List<ItemVO> getAirBest3(){
		return itemDao.getAirBest3();
	}
	
	public List<ItemVO> getRefBest3(){
		return itemDao.getRefBest3();
	}
	
	public List<ItemVO> getLaundryBest3(){
		return itemDao.getLaundryBest3();
	}
	
	public List<ItemVO> getStylerBest3(){
		return itemDao.getStylerBest3();
	}
	
	public List<ItemVO> getTvBest3(){
		return itemDao.getTvBest3();
	}
	
	public int countItem(String cateId){
		return itemDao.countItem(cateId);
	}
	
	public int updateItem(ItemVO iv) {
		return itemDao.updateItem(iv);
	}
	
	public int getSearchResultCnt(String searchWord){
		return itemDao.getSearchResultCnt(searchWord);
	}
	
	public List<ItemVO> getCategoryItemList(String cateId){
		return itemDao.getCategoryItemList(cateId);
	}
	
	public List<ItemVO> getCategoryItemListRecent(String cateId){
		return itemDao.getCategoryItemListRecent(cateId);
	}
	
	public List<ItemVO> getCategoryItemListHigh(String cateId){
		return itemDao.getCategoryItemListHigh(cateId);
	}
	
	public List<ItemVO> getCategoryItemListLow(String cateId){
		return itemDao.getCategoryItemListLow(cateId);
	}
	
	public List<SearchVO> getSearchResultSortDate(String cateId){
		return itemDao.getSearchResultSortDate(cateId);
	}
	
	public List<SearchVO> getSearchResultSortHigh(String cateId){
		return itemDao.getSearchResultSortHigh(cateId);
	}
	
	public List<SearchVO> getSearchResultSortLow(String cateId){
		return itemDao.getSearchResultSortLow(cateId);
	}
	
	public int saveAtchFileList(Collection<Part> parts, ItemVO iv) {

		String uploadPath = "/Users/gimmingang/A_TeachingMaterial/04_MiddelProject/RentalService/src/main/webapp/views/images/product";
		File uploadDir = new File(uploadPath);
		if (!uploadDir.exists()) {
			uploadDir.mkdir();
		}

		int cnt = 0;
		
		boolean isFirstFile = true; // 첫번째 파일 여부
		
		for (Part part : parts) {
			String fileName = part.getSubmittedFileName(); // 업로드 파일명 추출

			if (fileName != null && !fileName.equals("")) {

				if (isFirstFile) { // 첫번째 업로드파일인지 체크

					isFirstFile = false;

					cnt = itemDao.insertItem(iv); // ATCH_FILE에 insert하기
					System.out.println(cnt);
				}

				long fileSize = part.getSize(); // 파일크기
				String saveFileName = UUID.randomUUID().toString().replace("-", ""); // 저장파일명
				String saveFilePath = uploadPath + "/" + saveFileName; // 저장파일경로

				// 확장자 추출
				String fileExtension = fileName.lastIndexOf(".") < 0 ? ""
						: fileName.substring(fileName.lastIndexOf(".") + 1);

				try {
					// 업로드파일 저장하기
					part.write(saveFilePath);
				} catch (IOException e) {
					e.printStackTrace();
				}

				AtchFileDetailVO atchFileDetailVO = new AtchFileDetailVO();
				atchFileDetailVO.setItemId(iv.getItemId());
				atchFileDetailVO.setStreFileNm(saveFileName);
				atchFileDetailVO.setFileSize(fileSize);
				atchFileDetailVO.setOrignlFileNm(fileName);
				atchFileDetailVO.setFileStreCours(saveFilePath);
				atchFileDetailVO.setFileExtsn(fileExtension);

				fileDao.insertFile(atchFileDetailVO);

				try {
					// 임시 업로드 파일 삭제처리하기
					part.delete();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return cnt;
	}
}
