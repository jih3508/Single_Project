# Single_Project

## 결과 화면
![결과이미지](https://github.com/jih3508/Single_Project/blob/master/%EC%9E%90%EB%B0%94%20%EC%9B%B9%20%ED%81%AC%EB%A1%A4%EB%A7%81%20%EB%AF%B8%EB%8B%88%20%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8/Naver_Article.png)

## 기술스택
- Java
- JSoup(웹크롤링 오픈소스)
- Swings(GUI)

## 중요 코드
``` Java
@Override
public void actionPerformed(ActionEvent e) {
	area.setText("");
		String geturl = url.getText();
		Document doc = null;

		try {
			doc = Jsoup.connect(geturl).get(); // 주소에있는 html 가져오기
		}catch(IOException e1) {
			e1.printStackTrace();
		}

		Elements element = doc.select("div.article_info");
		String newsTitle = element.select("h3#articleTitle").text();

		area.append("기사 제목: " + newsTitle);

		String text = doc.select("div#articleBodyContents._article_body_contents").text();
		int index = text.indexOf("▶");
		System.out.println(index);

		text = text.substring(0, index);
		index = text.lastIndexOf(".");
		String content_text = text.substring(0, index);
		index = content_text.lastIndexOf(".");

		area.append("\n\n"+content_text.substring(0, index+1));
		area.append("\n\n기자: " + text.substring(index+1));
		area.setLineWrap(true); 

	}

```
